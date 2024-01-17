const std = @import("std");
const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const lib = b.addSharedLibrary(.{
        .name = "lib",
        .root_source_file = .{ .path = "src/lib.zig" },
        .target = .{
            .cpu_arch = .wasm32,
            .os_tag = .freestanding,
        },
        .optimize = .ReleaseSmall,
    });
    lib.rdynamic = true;
    b.installArtifact(lib);

    const copy_output_to_root = b.addInstallBinFile(lib.getEmittedBin(), "../../web/lib.wasm");
    b.getInstallStep().dependOn(&copy_output_to_root.step);
}
