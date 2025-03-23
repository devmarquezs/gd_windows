const std = @import("std");

pub fn createWindow(title: []const u8, width: u32, height: u32) void {
    std.debug.print("Criando janela no Linux: \"{s}\" de {d}x{d}\n", .{ title, width, height });
    //integração com X11, Wayland ou outra biblioteca para criar uma janela no Linux.
}
