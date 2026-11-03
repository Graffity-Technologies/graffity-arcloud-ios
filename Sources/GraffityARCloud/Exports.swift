//  Exports.swift
//  GraffityARCloud — public umbrella module.
//
//  The compiled SDK ships as the `GraffityARCloudService` binary framework
//  (declared as `GraffityARCloudBinary` in Package.swift). This thin wrapper
//  target re-exports it so consumers keep writing `import GraffityARCloud`.
//  The framework statically embeds its dependencies (gRPC, Lottie, …), so this
//  target must not declare them — that would link a second copy into the host app.

@_exported import GraffityARCloudService
