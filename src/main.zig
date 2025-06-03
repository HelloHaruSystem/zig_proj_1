const std = @import("std");

const base64_ref = @import("base64/Base64.zig");

// constants
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    // const base64 = base64_ref.Base64.init();

    //try stdout.print("Character at index 28: {c}\n", .{base64._char_at(28)});

    const text = "Hi";
    const bits = 0b01001000;
    try stdout.print("0b01001000 = {d}\n", .{bits});
    for (text) |i| {
        try stdout.print("First byte: {d}\n", .{i >> 2});
    }
}
