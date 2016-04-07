﻿// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
namespace ServiceStack.EventStore.Events
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Reflection;
    using HelperClasses;
    using Types;

    /// <summary>
    /// Contains a dictionary of DTOs that can be transformed from EventStore's ResolvedEvent
    /// </summary>
    internal static class EventTypes
    {
        private static readonly Dictionary<string, Type> eventTypes = new Dictionary<string, Type>();

        public static IReadOnlyDictionary<string, Type> GetAllHandlers()
        {
            return eventTypes;
        }

        public static bool TryResolveMapping(string eventType, out Type type)
        {
            eventTypes.TryGetValue(eventType, out type);
            return type != null;
        }

        public static bool HasMappings()
        {
            return eventTypes.HasAny();
        }

        public static void ScanForServiceEvents()
        {
            var methods = HostContext.Metadata.ServiceTypes
                                                    .SelectMany(t => t.GetMethods()
                                                    .Where(m => m.IsPublic && m.Name == "Any"));

            var parameters = methods.SelectMany(m => m.GetParameters().Where(p => p.ParameterType.IsClass));

            foreach (var p in parameters)
            {
                eventTypes.Add(p.ParameterType.Name, p.ParameterType);
            }
        }

        public static void ScanForAggregateEvents()
        {
            var path = AppDomain.CurrentDomain.BaseDirectory;
            var files = Directory.GetFiles(path, "*.dll");

            foreach (var file in files)
            {
                var assembly = Assembly.LoadFrom(file);
                var types = assembly.GetTypes()
                                .Where(t => t.IsClass && t.HasInterface(typeof(IAggregateEvent)));

                foreach (var type in types)
                {
                    eventTypes.Add(type.Name, type);
                }
            }
        }
    }
}
