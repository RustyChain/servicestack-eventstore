﻿using System;
using ServiceStack.EventStore.Types;

namespace ServiceStack.EventStore.IntegrationTests.TestDomain
{
    public class PurchaseOrderCreated : IAggregateEvent
    {
        public Guid Id { get; }

        public PurchaseOrderCreated(Guid id)
        {
            Id = id;
        }
    }
}