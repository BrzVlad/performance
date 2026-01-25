#!/bin/sh

#export MONO_ENV_OPTIONS="--interpreter"
#export MONO_INTERPRETER_OPTIONS="-tiering,-super,-bblocks,-ssa,-cprop"

#export DOTNET_InterpMode=1

# Composite r2r, r2r Release build
dotnet run -c Release -f net10.0 --runtimes r2r10_0 --filter "*" --customruntimepack /home/vbrezae/Xamarin/repos/runtime/artifacts/bin/microsoft.netcore.app.runtime.linux-arm64/Release/ --aotcompilerpath /home/vbrezae/Xamarin/repos/runtime/artifacts/packages/Release/Shipping/crossgen2pack/

# Compsoite r2r, r2r Debug build
#dotnet run -c Release -f net10.0 --runtimes compositer2r10_0 --filter "System.Tests.Perf_Int32.TryFormat" --customruntimepack /home/vbrezae/Xamarin/repos/runtime3/artifacts/bin/microsoft.netcore.app.runtime.linux-arm64/Release/ --aotcompilerpath /home/vbrezae/Xamarin/repos/runtime3/artifacts/packages/Debug/Shipping/crossgen2pack/

# RyuJIT
#dotnet run -c Release -f net10.0 --filter "*" --corerun /home/vbrezae/Xamarin/repos/runtime2/artifacts/tests/coreclr/linux.arm64.Release/Tests/Core_Root/corerun

# Composite r2r, default sdk
#dotnet run -c Release -f net10.0 --runtimes compositer2r10_0 --filter "System.Tests.Perf_Int32.TryFormat"

