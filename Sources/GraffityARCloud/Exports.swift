//  Exports.swift
//  GraffityARCloud — public umbrella module.
//
//  The compiled SDK ships as the `GraffityARCloudService` binary framework
//  (declared as `GraffityARCloudBinary` in Package.swift). This thin wrapper
//  target re-exports it so consumers keep writing `import GraffityARCloud`, and
//  — because a `.binaryTarget` cannot declare dependencies — it is the target
//  that carries the framework's internal SPM dependencies (gRPC, Lottie) so
//  their symbols link into the host app.

@_exported import GraffityARCloudService
