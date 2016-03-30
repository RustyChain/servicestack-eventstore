namespace ServiceStack.EventStore.Exceptions
{
    using System;

    /// <summary>
    /// An exception thrown when a requested (aggregate) stream can't be found.
    /// </summary>
    public class AggregateNotFoundException : Exception
    {
        public readonly Guid Id;
        public readonly Type Type;

        public AggregateNotFoundException(Guid id, Type type)
            : base($"Aggregate '{id}' (type {type.Name}) was not found.")
        {
            Id = id;
            Type = type;
        }
    }
}