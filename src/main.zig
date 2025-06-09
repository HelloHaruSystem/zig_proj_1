const std = @import("std");

const base64_ref = @import("base64/Base64.zig");

// constants
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    const base64 = base64_ref.Base64.init();

    var memory_buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&memory_buffer);
    const allocator = fba.allocator();

    const text = "Testing some more stuff";
    const etext = "VGVzdGluZyBzb21lIG1vcmUgc3R1ZmY=";
    const encoded_text = try base64.encode(allocator, text);
    const decoded_text = try base64.decode(allocator, etext);

    try stdout.print("Encoded text: {s}\n", .{encoded_text});
    try stdout.print("Decoded text: {s}\n", .{decoded_text});
}
