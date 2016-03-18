﻿using System;
using FluentAssertions;
using ServiceStack.EventStore.Repository;
using ServiceStack.EventStore.Types;
using Xunit;
using Xunit.Abstractions;
using System.Threading;
using Funq;

namespace ServiceStack.EventStore.IntegrationTests.TestClasses
{
    [Collection("ServiceStackHostCollection")]
    public class EventHandlerTests : IHandleEvent<WeeGreenMenLanded>
    {
        private readonly IEventStoreRepository eventStore;
        private readonly ITestOutputHelper testOutput;
        private bool eventFired;

        public EventHandlerTests(ITestOutputHelper testOutput, ServiceStackHostFixture fixture)
        {
            this.testOutput = testOutput;
            eventStore = fixture.AppHost.Container.Resolve<IEventStoreRepository>();
            //fixture.AppHost.Container.RegisterAutoWired<VolatileConsumer>();
            fixture.AppHost.Container.Register(c => this).ReusedWithin(ReuseScope.Default);
        }

        //todo: how best to test handling events and streams?
        public void ConsumesEvent()
        {
            var weeGreenMenLanded = new WeeGreenMenLanded(14);
            eventStore.Publish(weeGreenMenLanded).Wait();
            Thread.Sleep(4000);
            eventFired.Should().BeTrue();
        }

        public void Handle(WeeGreenMenLanded @event)
        {
            eventFired = true;
        }
    }
}
