[33m11511e2[31m (HEAD -> master) [mAdded fixes after SS9 code review. Rewrote samples to use method-chaining.[32m [David Brower][m
[33mf169311[31m (origin/master) [mUpdated ReadModel with explanation of each operation.[32m [David Brower][m
[33m406eab3[31m [mUpdated ReadMe with reference to Headers in Wiki[32m [David Brower][m
[33m946f6c8[31m [mReplaced ReadModel sample with console app.[32m [David Brower][m
[33m483b78f[31m [mUpdated ReadMe ProjectionWriter => ReadModelWriter[32m [David Brower][m
[33mc5cf6a3[31m [mAdded simple Write project as console app.[32m [David Brower][m
[33mf67fed2[31m [mAdded SaveAsync extension method. Deleted write sample project.[32m [David Brower][m
[33m0c82b7c[31m [mHeaders can now be retrieved for DTO-event. Updated ReadModel Sample.[32m [David Brower][m
[33m5c2fb15[31m [mUpdated ReadMe.[32m [David Brower][m
[33mcfe13fd[31m [mHadn't committed the updated project file![32m [David Brower][m
[33m55bfdaf[31m [mRefactored code and general tidy up.[32m [David Brower][m
[33mdd9ad4b[31m [mRemoved Event abstract class and all references to it.[32m [David Brower][m
[33mc5fb62f[31m [mAdded digramming demonstrating state.[32m [David Brower][m
[33m93fc485[31m [mUpdated ReadMe with aggregate diagram[32m [David Brower][m
[33mde886ec[31m [mRenamed Projection -> ReadModel.[32m [David Brower][m
[33m5a3d556[31m [mRemoved Event abstract class. RetryPolicy durations now param array.[32m [David Brower][m
[33mc4e4ae8[31m [mUpdated ReadMe.[32m [David Brower][m
[33m6160c47[31m [mUpdated ReadMe.[32m [David Brower][m
[33m7d4156f[31m [mUpdated ReadMe. Fixed typos.[32m [David Brower][m
[33m485720a[31m [mRemoved IAggregateEvent. Input of assemblies with events. Updated ReadMe.[32m [David Brower][m
[33m97abfe1[31m [mUpdated ReadMe: Metadata and RetryPolicy updated.[32m [David Brower][m
[33m0a0ac72[31m [mUpdated ReadMe with diagram of Event Routing by plugin.[32m [David Brower][m
[33ma5a7025[31m [mUpdated ReadMe. Added assets folder and marble diagram.[32m [David Brower][m
[33ma7406bc[31m [mMerge pull request #2 from MacLeanElectrical/DavidBrower-update-read-me[32m [David Brower][m
[33mff4c822[31m [mUpdated ReadMe file. Fixed typos and indentation.[32m [David Brower][m
[33ma75a4a0[31m [mFixing project refs and update nuspec file[32m [Scott Mackay][m
[33mc417c81[31m [mRemoved test project for ReadModel sample. Updated AssemblyInfo files.[32m [David Brower][m
[33mb67e0a5[31m [mUpdating headers and fixing project references Cdoe style updates[32m [Scott Mackay][m
[33mb52997d[31m [mWwwlicious patch 1 (#1)[32m [Scott Mackay][m
[33mc2aeaa4[31m [mUpdate ReadMe.md[32m [Scott Mackay][m
[33mab31194[31m [mwip[32m [David Brower][m
[33m8e45bac[31m [mAdded read and write model sample projects. Refactored ReadModelStorage. Updated ReadMe.[32m [David Brower][m
[33ma5496ee[31m [mGitHub preparation: Added licence info. Added src and test folders. Added nuspec file.[32m [David Brower][m
[33m4872ad2[31m [mDeveloper can now specify ReadModelStorage. Removed unnecessary dependencies.[32m [David Brower][m
[33m468455e[31m [mAdded ability to populate a read model from events. Set access modifiers to internal where appropriate.[32m [David Brower][m
[33m9fcaf39[31m [mUpdated OrmLite, Polly & EventStore client. Removed tests for async void. Set subscription retry default.[32m [David Brower][m
[33m2c12d2e[31m [mConverted Interface IEventConsumer to abstract StreamConsumer class. Added default RetryPolicy.[32m [David Brower][m
[33m7aa85e2[31m [mAdded configurable RetryPolicy.[32m [David Brower][m
[33mc7c9c57[31m [mRefactored how streams are specified. Can now specify max. no of subscription retries.[32m [David Brower][m
[33m1cb12df[31m [mAdded SubscriptionPolicy class. Changed to ServiceController.ExecuteAsync[32m [David Brower][m
[33m96d6fac[31m [mReplaced AggregateException with Exception type.[32m [David Brower][m
[33m5b5e441[31m [mApplied fixes and refactorings following code review CAT-12.[32m [David Brower][m
[33m8b5568e[31m [mRefactored New class to be more fluent.[32m [David Brower][m
[33m711e9c0[31m [mAdded New class to provide lambda compilation.[32m [David Brower][m
[33madda742[31m [mReplaced Activator.CreateInstance with compiled lambdas.[32m [David Brower][m
[33m88c725b[31m [mSubscribed events now handled by ServiceStack. Removed IHandleEvent<T>[32m [David Brower][m
[33m666c704[31m [mRenamed asynchronous methods with "Async" prefix.[32m [David Brower][m
[33m2ce9115[31m [mPlugin now allows subscriptions to multiple streams.[32m [David Brower][m
[33m4faa016[31m [mCan now add custom headers when persisting an aggregate. Added tests.[32m [David Brower][m
[33m7b520fa[31m [mFixed problem with version being off by one when reading.[32m [David Brower][m
[33m50d4385[31m [mAdded code comments and todos. Added tests. Removed surplus classes.[32m [David Brower][m
[33m71a0ec2[31m [mRefactored Aggregate base class and added State and StateMutator[32m [David Brower][m
[33m11892f0[31m [mAdded integration tests for EventStore and refactored aggregates[32m [David Brower][m
[33m3744b22[31m [mAdded MonitorSettings, removed EventPublisher, and added repository class[32m [David Brower][m
[33m2a12caf[31m [mRemoved CircuitBreakerSettings and added delegate for ConnectionMonitor[32m [David Brower][m
[33mb1f859d[31m [mRefactored folders and tidied up usings[32m [David Brower][m
[33m8a3ed91[31m [mRefactored Event/EventStoreEvent to AggregateEvent<TId>[32m [David Brower][m
[33mb0886de[31m [mAdded deterministic id generation when publishing events[32m [David Brower][m
[33mb70b7fc[31m [mUpdated .gitignore[32m [David Brower][m
[33m2a048e7[31m [mRemoved store-and-forward classes and interfaces[32m [David Brower][m
[33mc3c44d2[31m [mAdded defaults for basic settings[32m [David Brower][m
[33mf1c27de[31m [mUpdated ReadMe to reflect use of default settings[32m [David Brower][m
[33mcee3488[31m [mCorrected markdown issue in documentation[32m [David Brower][m
[33m597644d[31m [mAdded first draft of documentation to ReadMe.md[32m [David Brower][m
[33m2df43e0[31m [mInitial Commit[32m [David Brower][m