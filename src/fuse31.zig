pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const u_char = u8;
pub const u_short = c_ushort;
pub const u_int = c_uint;
pub const u_long = c_ulong;
pub const struct_fuse_opt = extern struct {
    templ: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
    value: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_fuse_args = extern struct {
    argc: c_int = @import("std").mem.zeroes(c_int),
    argv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    allocated: c_int = @import("std").mem.zeroes(c_int),
};
pub const fuse_opt_proc_t = ?*const fn (?*anyopaque, [*c]const u8, c_int, [*c]struct_fuse_args) callconv(.C) c_int;
pub extern fn fuse_opt_parse(args: [*c]struct_fuse_args, data: ?*anyopaque, opts: [*c]const struct_fuse_opt, proc: fuse_opt_proc_t) c_int;
pub extern fn fuse_opt_add_opt(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_opt_escaped(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_arg(args: [*c]struct_fuse_args, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_insert_arg(args: [*c]struct_fuse_args, pos: c_int, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_free_args(args: [*c]struct_fuse_args) void;
pub extern fn fuse_opt_match(opts: [*c]const struct_fuse_opt, opt: [*c]const u8) c_int;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __builtin_va_list = [*c]u8;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    __arg: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub fn _OSSwapInt16(arg__data: u16) callconv(.C) u16 {
    var _data = arg__data;
    _ = &_data;
    return @as(u16, @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, _data))) << @intCast(8)) | (@as(c_int, @bitCast(@as(c_uint, _data))) >> @intCast(8))))));
}
pub fn _OSSwapInt32(arg__data: u32) callconv(.C) u32 {
    var _data = arg__data;
    _ = &_data;
    _data = __builtin_bswap32(_data);
    return _data;
}
pub fn _OSSwapInt64(arg__data: u64) callconv(.C) u64 {
    var _data = arg__data;
    _ = &_data;
    return __builtin_bswap64(_data);
}
pub const struct__OSUnalignedU16 = extern struct {
    __val: u16 align(1) = @import("std").mem.zeroes(u16),
};
pub const struct__OSUnalignedU32 = extern struct {
    __val: u32 align(1) = @import("std").mem.zeroes(u32),
};
pub const struct__OSUnalignedU64 = extern struct {
    __val: u64 align(1) = @import("std").mem.zeroes(u64),
};
pub fn OSReadSwapInt16(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u16 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt16(@as([*c]struct__OSUnalignedU16, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSReadSwapInt32(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u32 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt32(@as([*c]struct__OSUnalignedU32, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSReadSwapInt64(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u64 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt64(@as([*c]struct__OSUnalignedU64, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSWriteSwapInt16(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u16) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU16, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt16(_data);
}
pub fn OSWriteSwapInt32(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u32) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU32, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt32(_data);
}
pub fn OSWriteSwapInt64(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u64) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU64, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt64(_data);
}
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_quad_t = u_int64_t;
pub const quad_t = i64;
pub const qaddr_t = [*c]quad_t;
pub const caddr_t = [*c]u8;
pub const daddr_t = i32;
pub const dev_t = __darwin_dev_t;
pub const fixpt_t = u_int32_t;
pub const blkcnt_t = __darwin_blkcnt_t;
pub const blksize_t = __darwin_blksize_t;
pub const gid_t = __darwin_gid_t;
pub const in_addr_t = __uint32_t;
pub const in_port_t = __uint16_t;
pub const ino_t = __darwin_ino_t;
pub const ino64_t = __darwin_ino64_t;
pub const key_t = __int32_t;
pub const mode_t = __darwin_mode_t;
pub const nlink_t = __uint16_t;
pub const id_t = __darwin_id_t;
pub const pid_t = __darwin_pid_t;
pub const off_t = __darwin_off_t;
pub const segsz_t = i32;
pub const swblk_t = i32;
pub const uid_t = __darwin_uid_t;
pub const clock_t = __darwin_clock_t;
pub const time_t = __darwin_time_t;
pub const useconds_t = __darwin_useconds_t;
pub const suseconds_t = __darwin_suseconds_t;
pub const rsize_t = __darwin_size_t;
pub const errno_t = c_int;
pub const struct_fd_set = extern struct {
    fds_bits: [32]__int32_t = @import("std").mem.zeroes([32]__int32_t),
};
pub const fd_set = struct_fd_set;
pub extern fn __darwin_check_fd_set_overflow(c_int, ?*const anyopaque, c_int) c_int;
pub inline fn __darwin_check_fd_set(arg__a: c_int, arg__b: ?*const anyopaque) c_int {
    var _a = arg__a;
    _ = &_a;
    var _b = arg__b;
    _ = &_b;
    if (@as(usize, @intCast(@intFromPtr(&__darwin_check_fd_set_overflow))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        return __darwin_check_fd_set_overflow(_a, _b, @as(c_int, 0));
    } else {
        return 1;
    }
    return 0;
}
pub inline fn __darwin_fd_isset(arg__fd: c_int, arg__p: [*c]const struct_fd_set) c_int {
    var _fd = arg__fd;
    _ = &_fd;
    var _p = arg__p;
    _ = &_p;
    if (__darwin_check_fd_set(_fd, @as(?*const anyopaque, @ptrCast(_p))) != 0) {
        return _p.*.fds_bits[@as(c_ulong, @bitCast(@as(c_long, _fd))) / (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))] & @as(__int32_t, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(@as(c_ulong, @bitCast(@as(c_long, _fd))) % (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))))));
    }
    return 0;
}
pub inline fn __darwin_fd_set(arg__fd: c_int, _p: [*c]struct_fd_set) void {
    var _fd = arg__fd;
    _ = &_fd;
    _ = &_p;
    if (__darwin_check_fd_set(_fd, @as(?*const anyopaque, @ptrCast(_p))) != 0) {
        _ = blk: {
            const ref = &_p.*.fds_bits[@as(c_ulong, @bitCast(@as(c_long, _fd))) / (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))];
            ref.* |= @as(__int32_t, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(@as(c_ulong, @bitCast(@as(c_long, _fd))) % (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))))));
            break :blk ref.*;
        };
    }
}
pub inline fn __darwin_fd_clr(arg__fd: c_int, _p: [*c]struct_fd_set) void {
    var _fd = arg__fd;
    _ = &_fd;
    _ = &_p;
    if (__darwin_check_fd_set(_fd, @as(?*const anyopaque, @ptrCast(_p))) != 0) {
        _ = blk: {
            const ref = &_p.*.fds_bits[@as(c_ulong, @bitCast(@as(c_long, _fd))) / (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))];
            ref.* &= ~@as(__int32_t, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(@as(c_ulong, @bitCast(@as(c_long, _fd))) % (@sizeOf(__int32_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))))));
            break :blk ref.*;
        };
    }
}
pub const fd_mask = __int32_t;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const pthread_cond_t = __darwin_pthread_cond_t;
pub const pthread_condattr_t = __darwin_pthread_condattr_t;
pub const pthread_mutex_t = __darwin_pthread_mutex_t;
pub const pthread_mutexattr_t = __darwin_pthread_mutexattr_t;
pub const pthread_once_t = __darwin_pthread_once_t;
pub const pthread_rwlock_t = __darwin_pthread_rwlock_t;
pub const pthread_rwlockattr_t = __darwin_pthread_rwlockattr_t;
pub const pthread_t = __darwin_pthread_t;
pub const pthread_key_t = __darwin_pthread_key_t;
pub const fsblkcnt_t = __darwin_fsblkcnt_t;
pub const fsfilcnt_t = __darwin_fsfilcnt_t;
pub const struct_timespec = extern struct {
    tv_sec: __darwin_time_t = @import("std").mem.zeroes(__darwin_time_t),
    tv_nsec: c_long = @import("std").mem.zeroes(c_long),
};
pub const struct_ostat = extern struct {
    st_dev: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    st_ino: ino_t = @import("std").mem.zeroes(ino_t),
    st_mode: mode_t = @import("std").mem.zeroes(mode_t),
    st_nlink: nlink_t = @import("std").mem.zeroes(nlink_t),
    st_uid: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    st_gid: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    st_rdev: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    st_size: __int32_t = @import("std").mem.zeroes(__int32_t),
    st_atimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_blksize: __int32_t = @import("std").mem.zeroes(__int32_t),
    st_blocks: __int32_t = @import("std").mem.zeroes(__int32_t),
    st_flags: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    st_gen: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct_stat = extern struct {
    st_dev: dev_t = @import("std").mem.zeroes(dev_t),
    st_mode: mode_t = @import("std").mem.zeroes(mode_t),
    st_nlink: nlink_t = @import("std").mem.zeroes(nlink_t),
    st_ino: __darwin_ino64_t = @import("std").mem.zeroes(__darwin_ino64_t),
    st_uid: uid_t = @import("std").mem.zeroes(uid_t),
    st_gid: gid_t = @import("std").mem.zeroes(gid_t),
    st_rdev: dev_t = @import("std").mem.zeroes(dev_t),
    st_atimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_birthtimespec: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_size: off_t = @import("std").mem.zeroes(off_t),
    st_blocks: blkcnt_t = @import("std").mem.zeroes(blkcnt_t),
    st_blksize: blksize_t = @import("std").mem.zeroes(blksize_t),
    st_flags: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    st_gen: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    st_lspare: __int32_t = @import("std").mem.zeroes(__int32_t),
    st_qspare: [2]__int64_t = @import("std").mem.zeroes([2]__int64_t),
};
pub extern fn chmod([*c]const u8, mode_t) c_int;
pub extern fn fchmod(c_int, mode_t) c_int;
pub extern fn fstat(c_int, [*c]struct_stat) c_int;
pub extern fn lstat([*c]const u8, [*c]struct_stat) c_int;
pub extern fn mkdir([*c]const u8, mode_t) c_int;
pub extern fn mkfifo([*c]const u8, mode_t) c_int;
pub extern fn stat([*c]const u8, [*c]struct_stat) c_int;
pub extern fn mknod([*c]const u8, mode_t, dev_t) c_int;
pub extern fn umask(mode_t) mode_t;
pub extern fn fchmodat(c_int, [*c]const u8, mode_t, c_int) c_int;
pub extern fn fstatat(c_int, [*c]const u8, [*c]struct_stat, c_int) c_int;
pub extern fn mkdirat(c_int, [*c]const u8, mode_t) c_int;
pub extern fn mkfifoat(c_int, [*c]const u8, mode_t) c_int;
pub extern fn mknodat(c_int, [*c]const u8, mode_t, dev_t) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flag: c_int) c_int;
pub const struct__filesec = opaque {};
pub const filesec_t = ?*struct__filesec;
pub extern fn chflags([*c]const u8, __uint32_t) c_int;
pub extern fn chmodx_np([*c]const u8, filesec_t) c_int;
pub extern fn fchflags(c_int, __uint32_t) c_int;
pub extern fn fchmodx_np(c_int, filesec_t) c_int;
pub extern fn fstatx_np(c_int, [*c]struct_stat, filesec_t) c_int;
pub extern fn lchflags([*c]const u8, __uint32_t) c_int;
pub extern fn lchmod([*c]const u8, mode_t) c_int;
pub extern fn lstatx_np([*c]const u8, [*c]struct_stat, filesec_t) c_int;
pub extern fn mkdirx_np([*c]const u8, filesec_t) c_int;
pub extern fn mkfifox_np([*c]const u8, filesec_t) c_int;
pub extern fn statx_np([*c]const u8, [*c]struct_stat, filesec_t) c_int;
pub extern fn umaskx_np(filesec_t) c_int;
pub const struct_setattr_x = extern struct {
    valid: i32 = @import("std").mem.zeroes(i32),
    mode: mode_t = @import("std").mem.zeroes(mode_t),
    uid: uid_t = @import("std").mem.zeroes(uid_t),
    gid: gid_t = @import("std").mem.zeroes(gid_t),
    size: off_t = @import("std").mem.zeroes(off_t),
    acctime: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    modtime: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    crtime: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    chgtime: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    bkuptime: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    flags: u32 = @import("std").mem.zeroes(u32),
};
// /usr/local/include/fuse/fuse_common.h:110:15: warning: struct demoted to opaque type - has bitfield
pub const struct_fuse_file_info = opaque {};
// /usr/local/include/fuse/fuse_common.h:241:12: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_1 = opaque {};
pub const struct_fuse_conn_info = extern struct {
    proto_major: c_uint = @import("std").mem.zeroes(c_uint),
    proto_minor: c_uint = @import("std").mem.zeroes(c_uint),
    async_read: c_uint = @import("std").mem.zeroes(c_uint),
    max_write: c_uint = @import("std").mem.zeroes(c_uint),
    max_readahead: c_uint = @import("std").mem.zeroes(c_uint),
    enable: struct_unnamed_1 = @import("std").mem.zeroes(struct_unnamed_1),
    capable: c_uint = @import("std").mem.zeroes(c_uint),
    want: c_uint = @import("std").mem.zeroes(c_uint),
    max_background: c_uint = @import("std").mem.zeroes(c_uint),
    congestion_threshold: c_uint = @import("std").mem.zeroes(c_uint),
    reserved: [22]c_uint = @import("std").mem.zeroes([22]c_uint),
};
pub const struct_fuse_session = opaque {};
pub const struct_fuse_chan = opaque {};
pub const struct_fuse_pollhandle = opaque {};
pub extern fn fuse_mount(mountpoint: [*c]const u8, args: [*c]struct_fuse_args) ?*struct_fuse_chan;
pub extern fn fuse_unmount(mountpoint: [*c]const u8, ch: ?*struct_fuse_chan) void;
pub extern fn fuse_parse_cmdline(args: [*c]struct_fuse_args, mountpoint: [*c][*c]u8, multithreaded: [*c]c_int, foreground: [*c]c_int) c_int;
pub extern fn fuse_daemonize(foreground: c_int) c_int;
pub extern fn fuse_version() c_int;
pub extern fn fuse_pollhandle_destroy(ph: ?*struct_fuse_pollhandle) void;
pub const FUSE_BUF_IS_FD: c_int = 2;
pub const FUSE_BUF_FD_SEEK: c_int = 4;
pub const FUSE_BUF_FD_RETRY: c_int = 8;
pub const enum_fuse_buf_flags = c_uint;
pub const FUSE_BUF_NO_SPLICE: c_int = 2;
pub const FUSE_BUF_FORCE_SPLICE: c_int = 4;
pub const FUSE_BUF_SPLICE_MOVE: c_int = 8;
pub const FUSE_BUF_SPLICE_NONBLOCK: c_int = 16;
pub const enum_fuse_buf_copy_flags = c_uint;
pub const struct_fuse_buf = extern struct {
    size: usize = @import("std").mem.zeroes(usize),
    flags: enum_fuse_buf_flags = @import("std").mem.zeroes(enum_fuse_buf_flags),
    mem: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    fd: c_int = @import("std").mem.zeroes(c_int),
    pos: off_t = @import("std").mem.zeroes(off_t),
};
pub const struct_fuse_bufvec = extern struct {
    count: usize = @import("std").mem.zeroes(usize),
    idx: usize = @import("std").mem.zeroes(usize),
    off: usize = @import("std").mem.zeroes(usize),
    buf: [1]struct_fuse_buf = @import("std").mem.zeroes([1]struct_fuse_buf),
};
pub extern fn fuse_buf_size(bufv: [*c]const struct_fuse_bufvec) usize;
pub extern fn fuse_buf_copy(dst: [*c]struct_fuse_bufvec, src: [*c]struct_fuse_bufvec, flags: enum_fuse_buf_copy_flags) isize;
pub extern fn fuse_set_signal_handlers(se: ?*struct_fuse_session) c_int;
pub extern fn fuse_remove_signal_handlers(se: ?*struct_fuse_session) void;
pub const struct_flock = extern struct {
    l_start: off_t = @import("std").mem.zeroes(off_t),
    l_len: off_t = @import("std").mem.zeroes(off_t),
    l_pid: pid_t = @import("std").mem.zeroes(pid_t),
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
};
pub const struct_flocktimeout = extern struct {
    fl: struct_flock = @import("std").mem.zeroes(struct_flock),
    timeout: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_radvisory = extern struct {
    ra_offset: off_t = @import("std").mem.zeroes(off_t),
    ra_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_fsignatures = extern struct {
    fs_file_start: off_t = @import("std").mem.zeroes(off_t),
    fs_blob_start: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    fs_blob_size: usize = @import("std").mem.zeroes(usize),
    fs_fsignatures_size: usize = @import("std").mem.zeroes(usize),
    fs_cdhash: [20]u8 = @import("std").mem.zeroes([20]u8),
    fs_hash_type: c_int = @import("std").mem.zeroes(c_int),
};
pub const fsignatures_t = struct_fsignatures;
pub const struct_fsupplement = extern struct {
    fs_file_start: off_t = @import("std").mem.zeroes(off_t),
    fs_blob_start: off_t = @import("std").mem.zeroes(off_t),
    fs_blob_size: usize = @import("std").mem.zeroes(usize),
    fs_orig_fd: c_int = @import("std").mem.zeroes(c_int),
};
pub const fsupplement_t = struct_fsupplement;
pub const struct_fchecklv = extern struct {
    lv_file_start: off_t = @import("std").mem.zeroes(off_t),
    lv_error_message_size: usize = @import("std").mem.zeroes(usize),
    lv_error_message: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const fchecklv_t = struct_fchecklv;
pub const struct_fgetsigsinfo = extern struct {
    fg_file_start: off_t = @import("std").mem.zeroes(off_t),
    fg_info_request: c_int = @import("std").mem.zeroes(c_int),
    fg_sig_is_platform: c_int = @import("std").mem.zeroes(c_int),
};
pub const fgetsigsinfo_t = struct_fgetsigsinfo;
pub const struct_fstore = extern struct {
    fst_flags: c_uint = @import("std").mem.zeroes(c_uint),
    fst_posmode: c_int = @import("std").mem.zeroes(c_int),
    fst_offset: off_t = @import("std").mem.zeroes(off_t),
    fst_length: off_t = @import("std").mem.zeroes(off_t),
    fst_bytesalloc: off_t = @import("std").mem.zeroes(off_t),
};
pub const fstore_t = struct_fstore;
pub const struct_fpunchhole = extern struct {
    fp_flags: c_uint = @import("std").mem.zeroes(c_uint),
    reserved: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: off_t = @import("std").mem.zeroes(off_t),
    fp_length: off_t = @import("std").mem.zeroes(off_t),
};
pub const fpunchhole_t = struct_fpunchhole;
pub const struct_ftrimactivefile = extern struct {
    fta_offset: off_t = @import("std").mem.zeroes(off_t),
    fta_length: off_t = @import("std").mem.zeroes(off_t),
};
pub const ftrimactivefile_t = struct_ftrimactivefile;
pub const struct_fspecread = extern struct {
    fsr_flags: c_uint = @import("std").mem.zeroes(c_uint),
    reserved: c_uint = @import("std").mem.zeroes(c_uint),
    fsr_offset: off_t = @import("std").mem.zeroes(off_t),
    fsr_length: off_t = @import("std").mem.zeroes(off_t),
};
pub const fspecread_t = struct_fspecread;
pub const struct_fattributiontag = extern struct {
    ft_flags: c_uint = @import("std").mem.zeroes(c_uint),
    ft_hash: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
    ft_attribution_name: [255]u8 = @import("std").mem.zeroes([255]u8),
};
pub const fattributiontag_t = struct_fattributiontag;
pub const struct_log2phys = extern struct {
    l2p_flags: c_uint = @import("std").mem.zeroes(c_uint),
    l2p_contigbytes: off_t = @import("std").mem.zeroes(off_t),
    l2p_devoffset: off_t = @import("std").mem.zeroes(off_t),
};
pub const FILESEC_OWNER: c_int = 1;
pub const FILESEC_GROUP: c_int = 2;
pub const FILESEC_UUID: c_int = 3;
pub const FILESEC_MODE: c_int = 4;
pub const FILESEC_ACL: c_int = 5;
pub const FILESEC_GRPUUID: c_int = 6;
pub const FILESEC_ACL_RAW: c_int = 100;
pub const FILESEC_ACL_ALLOCSIZE: c_int = 101;
pub const filesec_property_t = c_uint;
pub extern fn open([*c]const u8, c_int, ...) c_int;
pub extern fn openat(c_int, [*c]const u8, c_int, ...) c_int;
pub extern fn creat([*c]const u8, mode_t) c_int;
pub extern fn fcntl(c_int, c_int, ...) c_int;
pub extern fn openx_np([*c]const u8, c_int, filesec_t) c_int;
pub extern fn open_dprotected_np([*c]const u8, c_int, c_int, c_int, ...) c_int;
pub extern fn openat_dprotected_np(c_int, [*c]const u8, c_int, c_int, c_int, ...) c_int;
pub extern fn openat_authenticated_np(c_int, [*c]const u8, c_int, c_int) c_int;
pub extern fn flock(c_int, c_int) c_int;
pub extern fn filesec_init() filesec_t;
pub extern fn filesec_dup(filesec_t) filesec_t;
pub extern fn filesec_free(filesec_t) void;
pub extern fn filesec_get_property(filesec_t, filesec_property_t, ?*anyopaque) c_int;
pub extern fn filesec_query_property(filesec_t, filesec_property_t, [*c]c_int) c_int;
pub extern fn filesec_set_property(filesec_t, filesec_property_t, ?*const anyopaque) c_int;
pub extern fn filesec_unset_property(filesec_t, filesec_property_t) c_int;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const tzname: [*c][*c]u8 = @extern([*c][*c]u8, .{
    .name = "tzname",
});
pub extern var getdate_err: c_int;
pub extern var timezone: c_long;
pub extern var daylight: c_int;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn clock() clock_t;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern fn time([*c]time_t) time_t;
pub extern fn tzset() void;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn posix2time(time_t) time_t;
pub extern fn tzsetwall() void;
pub extern fn time2posix(time_t) time_t;
pub extern fn timelocal([*c]struct_tm) time_t;
pub extern fn timegm([*c]struct_tm) time_t;
pub extern fn nanosleep(__rqtp: [*c]const struct_timespec, __rmtp: [*c]struct_timespec) c_int;
pub const _CLOCK_REALTIME: c_int = 0;
pub const _CLOCK_MONOTONIC: c_int = 6;
pub const _CLOCK_MONOTONIC_RAW: c_int = 4;
pub const _CLOCK_MONOTONIC_RAW_APPROX: c_int = 5;
pub const _CLOCK_UPTIME_RAW: c_int = 8;
pub const _CLOCK_UPTIME_RAW_APPROX: c_int = 9;
pub const _CLOCK_PROCESS_CPUTIME_ID: c_int = 12;
pub const _CLOCK_THREAD_CPUTIME_ID: c_int = 16;
pub const clockid_t = c_uint;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_gettime_nsec_np(__clock_id: clockid_t) __uint64_t;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn timespec_get(ts: [*c]struct_timespec, base: c_int) c_int;
pub const struct_utimbuf = extern struct {
    actime: time_t = @import("std").mem.zeroes(time_t),
    modtime: time_t = @import("std").mem.zeroes(time_t),
};
pub extern fn utime([*c]const u8, [*c]const struct_utimbuf) c_int;
pub const struct_statvfs = extern struct {
    f_bsize: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_frsize: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_blocks: fsblkcnt_t = @import("std").mem.zeroes(fsblkcnt_t),
    f_bfree: fsblkcnt_t = @import("std").mem.zeroes(fsblkcnt_t),
    f_bavail: fsblkcnt_t = @import("std").mem.zeroes(fsblkcnt_t),
    f_files: fsfilcnt_t = @import("std").mem.zeroes(fsfilcnt_t),
    f_ffree: fsfilcnt_t = @import("std").mem.zeroes(fsfilcnt_t),
    f_favail: fsfilcnt_t = @import("std").mem.zeroes(fsfilcnt_t),
    f_fsid: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_flag: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_namemax: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub extern fn fstatvfs(c_int, [*c]struct_statvfs) c_int;
pub extern fn statvfs(noalias [*c]const u8, noalias [*c]struct_statvfs) c_int;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    iov_len: usize = @import("std").mem.zeroes(usize),
};
pub const UIO_READ: c_int = 0;
pub const UIO_WRITE: c_int = 1;
pub const enum_uio_rw = c_uint;
pub extern fn readv(c_int, [*c]const struct_iovec, c_int) isize;
pub extern fn writev(c_int, [*c]const struct_iovec, c_int) isize;
pub extern fn preadv(c_int, [*c]const struct_iovec, c_int, off_t) isize;
pub extern fn pwritev(c_int, [*c]const struct_iovec, c_int, off_t) isize;
pub const sig_atomic_t = c_int;
pub const struct___darwin_arm_exception_state = extern struct {
    __exception: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __far: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_exception_state64 = extern struct {
    __far: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __esr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __exception: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_thread_state = extern struct {
    __r: [13]__uint32_t = @import("std").mem.zeroes([13]__uint32_t),
    __sp: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __lr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __pc: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __cpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_thread_state64 = extern struct {
    __x: [29]__uint64_t = @import("std").mem.zeroes([29]__uint64_t),
    __fp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __lr: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __sp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __pc: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __cpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __pad: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_vfp_state = extern struct {
    __r: [64]__uint32_t = @import("std").mem.zeroes([64]__uint32_t),
    __fpscr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const __uint128_t = u128;
pub const struct___darwin_arm_neon_state64 = extern struct {
    __v: [32]__uint128_t = @import("std").mem.zeroes([32]__uint128_t),
    __fpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fpcr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_neon_state = extern struct {
    __v: [16]__uint128_t = @import("std").mem.zeroes([16]__uint128_t),
    __fpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fpcr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___arm_pagein_state = extern struct {
    __pagein_error: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct___arm_legacy_debug_state = extern struct {
    __bvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __bcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
};
pub const struct___darwin_arm_debug_state32 = extern struct {
    __bvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __bcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __mdscr_el1: __uint64_t = @import("std").mem.zeroes(__uint64_t),
};
pub const struct___darwin_arm_debug_state64 = extern struct {
    __bvr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __bcr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __wvr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __wcr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __mdscr_el1: __uint64_t = @import("std").mem.zeroes(__uint64_t),
};
pub const struct___darwin_arm_cpmu_state64 = extern struct {
    __ctrs: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
};
pub const struct___darwin_mcontext32 = extern struct {
    __es: struct___darwin_arm_exception_state = @import("std").mem.zeroes(struct___darwin_arm_exception_state),
    __ss: struct___darwin_arm_thread_state = @import("std").mem.zeroes(struct___darwin_arm_thread_state),
    __fs: struct___darwin_arm_vfp_state = @import("std").mem.zeroes(struct___darwin_arm_vfp_state),
};
pub const struct___darwin_mcontext64 = extern struct {
    __es: struct___darwin_arm_exception_state64 = @import("std").mem.zeroes(struct___darwin_arm_exception_state64),
    __ss: struct___darwin_arm_thread_state64 = @import("std").mem.zeroes(struct___darwin_arm_thread_state64),
    __ns: struct___darwin_arm_neon_state64 = @import("std").mem.zeroes(struct___darwin_arm_neon_state64),
};
pub const mcontext_t = [*c]struct___darwin_mcontext64;
pub const struct___darwin_sigaltstack = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_size: __darwin_size_t = @import("std").mem.zeroes(__darwin_size_t),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const stack_t = struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = extern struct {
    uc_onstack: c_int = @import("std").mem.zeroes(c_int),
    uc_sigmask: __darwin_sigset_t = @import("std").mem.zeroes(__darwin_sigset_t),
    uc_stack: struct___darwin_sigaltstack = @import("std").mem.zeroes(struct___darwin_sigaltstack),
    uc_link: [*c]struct___darwin_ucontext = @import("std").mem.zeroes([*c]struct___darwin_ucontext),
    uc_mcsize: __darwin_size_t = @import("std").mem.zeroes(__darwin_size_t),
    uc_mcontext: [*c]struct___darwin_mcontext64 = @import("std").mem.zeroes([*c]struct___darwin_mcontext64),
};
pub const ucontext_t = struct___darwin_ucontext;
pub const sigset_t = __darwin_sigset_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
pub const struct_sigevent = extern struct {
    sigev_notify: c_int = @import("std").mem.zeroes(c_int),
    sigev_signo: c_int = @import("std").mem.zeroes(c_int),
    sigev_value: union_sigval = @import("std").mem.zeroes(union_sigval),
    sigev_notify_function: ?*const fn (union_sigval) callconv(.C) void = @import("std").mem.zeroes(?*const fn (union_sigval) callconv(.C) void),
    sigev_notify_attributes: [*c]pthread_attr_t = @import("std").mem.zeroes([*c]pthread_attr_t),
};
pub const struct___siginfo = extern struct {
    si_signo: c_int = @import("std").mem.zeroes(c_int),
    si_errno: c_int = @import("std").mem.zeroes(c_int),
    si_code: c_int = @import("std").mem.zeroes(c_int),
    si_pid: pid_t = @import("std").mem.zeroes(pid_t),
    si_uid: uid_t = @import("std").mem.zeroes(uid_t),
    si_status: c_int = @import("std").mem.zeroes(c_int),
    si_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    si_value: union_sigval = @import("std").mem.zeroes(union_sigval),
    si_band: c_long = @import("std").mem.zeroes(c_long),
    __pad: [7]c_ulong = @import("std").mem.zeroes([7]c_ulong),
};
pub const siginfo_t = struct___siginfo;
pub const union___sigaction_u = extern union {
    __sa_handler: ?*const fn (c_int) callconv(.C) void,
    __sa_sigaction: ?*const fn (c_int, [*c]struct___siginfo, ?*anyopaque) callconv(.C) void,
};
pub const struct___sigaction = extern struct {
    __sigaction_u: union___sigaction_u = @import("std").mem.zeroes(union___sigaction_u),
    sa_tramp: ?*const fn (?*anyopaque, c_int, c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, c_int, c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void),
    sa_mask: sigset_t = @import("std").mem.zeroes(sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_sigaction = extern struct {
    __sigaction_u: union___sigaction_u = @import("std").mem.zeroes(union___sigaction_u),
    sa_mask: sigset_t = @import("std").mem.zeroes(sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const sig_t = ?*const fn (c_int) callconv(.C) void;
pub const struct_sigvec = extern struct {
    sv_handler: ?*const fn (c_int) callconv(.C) void = @import("std").mem.zeroes(?*const fn (c_int) callconv(.C) void),
    sv_mask: c_int = @import("std").mem.zeroes(c_int),
    sv_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_sigstack = extern struct {
    ss_sp: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    ss_onstack: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn signal(c_int, ?*const fn (c_int) callconv(.C) void) ?*const fn (c_int) callconv(.C) void;
pub const au_id_t = uid_t;
pub const au_asid_t = pid_t;
pub const au_event_t = u_int16_t;
pub const au_emod_t = u_int16_t;
pub const au_class_t = u_int32_t;
pub const au_asflgs_t = u_int64_t;
pub const au_ctlmode_t = u8;
pub const struct_au_tid = extern struct {
    port: dev_t = @import("std").mem.zeroes(dev_t),
    machine: u_int32_t = @import("std").mem.zeroes(u_int32_t),
};
pub const au_tid_t = struct_au_tid;
pub const struct_au_tid_addr = extern struct {
    at_port: dev_t = @import("std").mem.zeroes(dev_t),
    at_type: u_int32_t = @import("std").mem.zeroes(u_int32_t),
    at_addr: [4]u_int32_t = @import("std").mem.zeroes([4]u_int32_t),
};
pub const au_tid_addr_t = struct_au_tid_addr;
pub const struct_au_mask = extern struct {
    am_success: c_uint = @import("std").mem.zeroes(c_uint),
    am_failure: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const au_mask_t = struct_au_mask;
pub const struct_auditinfo = extern struct {
    ai_auid: au_id_t = @import("std").mem.zeroes(au_id_t),
    ai_mask: au_mask_t = @import("std").mem.zeroes(au_mask_t),
    ai_termid: au_tid_t = @import("std").mem.zeroes(au_tid_t),
    ai_asid: au_asid_t = @import("std").mem.zeroes(au_asid_t),
};
pub const auditinfo_t = struct_auditinfo;
pub const struct_auditinfo_addr = extern struct {
    ai_auid: au_id_t = @import("std").mem.zeroes(au_id_t),
    ai_mask: au_mask_t = @import("std").mem.zeroes(au_mask_t),
    ai_termid: au_tid_addr_t = @import("std").mem.zeroes(au_tid_addr_t),
    ai_asid: au_asid_t = @import("std").mem.zeroes(au_asid_t),
    ai_flags: au_asflgs_t = @import("std").mem.zeroes(au_asflgs_t),
};
pub const auditinfo_addr_t = struct_auditinfo_addr;
pub const struct_auditpinfo = extern struct {
    ap_pid: pid_t = @import("std").mem.zeroes(pid_t),
    ap_auid: au_id_t = @import("std").mem.zeroes(au_id_t),
    ap_mask: au_mask_t = @import("std").mem.zeroes(au_mask_t),
    ap_termid: au_tid_t = @import("std").mem.zeroes(au_tid_t),
    ap_asid: au_asid_t = @import("std").mem.zeroes(au_asid_t),
};
pub const auditpinfo_t = struct_auditpinfo;
pub const struct_auditpinfo_addr = extern struct {
    ap_pid: pid_t = @import("std").mem.zeroes(pid_t),
    ap_auid: au_id_t = @import("std").mem.zeroes(au_id_t),
    ap_mask: au_mask_t = @import("std").mem.zeroes(au_mask_t),
    ap_termid: au_tid_addr_t = @import("std").mem.zeroes(au_tid_addr_t),
    ap_asid: au_asid_t = @import("std").mem.zeroes(au_asid_t),
    ap_flags: au_asflgs_t = @import("std").mem.zeroes(au_asflgs_t),
};
pub const auditpinfo_addr_t = struct_auditpinfo_addr;
pub const struct_au_session = extern struct {
    as_aia_p: [*c]auditinfo_addr_t = @import("std").mem.zeroes([*c]auditinfo_addr_t),
    as_mask: au_mask_t = @import("std").mem.zeroes(au_mask_t),
};
pub const au_session_t = struct_au_session;
pub const struct_au_expire_after = extern struct {
    age: time_t = @import("std").mem.zeroes(time_t),
    size: usize = @import("std").mem.zeroes(usize),
    op_type: u8 = @import("std").mem.zeroes(u8),
};
pub const au_expire_after_t = struct_au_expire_after;
pub const struct_au_token = opaque {};
pub const token_t = struct_au_token;
pub const struct_au_qctrl = extern struct {
    aq_hiwater: c_int = @import("std").mem.zeroes(c_int),
    aq_lowater: c_int = @import("std").mem.zeroes(c_int),
    aq_bufsz: c_int = @import("std").mem.zeroes(c_int),
    aq_delay: c_int = @import("std").mem.zeroes(c_int),
    aq_minfree: c_int = @import("std").mem.zeroes(c_int),
};
pub const au_qctrl_t = struct_au_qctrl;
pub const struct_audit_stat = extern struct {
    as_version: c_uint = @import("std").mem.zeroes(c_uint),
    as_numevent: c_uint = @import("std").mem.zeroes(c_uint),
    as_generated: c_int = @import("std").mem.zeroes(c_int),
    as_nonattrib: c_int = @import("std").mem.zeroes(c_int),
    as_kernel: c_int = @import("std").mem.zeroes(c_int),
    as_audit: c_int = @import("std").mem.zeroes(c_int),
    as_auditctl: c_int = @import("std").mem.zeroes(c_int),
    as_enqueue: c_int = @import("std").mem.zeroes(c_int),
    as_written: c_int = @import("std").mem.zeroes(c_int),
    as_wblocked: c_int = @import("std").mem.zeroes(c_int),
    as_rblocked: c_int = @import("std").mem.zeroes(c_int),
    as_dropped: c_int = @import("std").mem.zeroes(c_int),
    as_totalsize: c_int = @import("std").mem.zeroes(c_int),
    as_memused: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const au_stat_t = struct_audit_stat;
pub const struct_audit_fstat = extern struct {
    af_filesz: u_int64_t = @import("std").mem.zeroes(u_int64_t),
    af_currsz: u_int64_t = @import("std").mem.zeroes(u_int64_t),
};
pub const au_fstat_t = struct_audit_fstat;
pub const struct_au_evclass_map = extern struct {
    ec_number: au_event_t = @import("std").mem.zeroes(au_event_t),
    ec_class: au_class_t = @import("std").mem.zeroes(au_class_t),
};
pub const au_evclass_map_t = struct_au_evclass_map;
pub const AU_SESSION_FLAG_IS_INITIAL: c_int = 1;
pub const AU_SESSION_FLAG_HAS_GRAPHIC_ACCESS: c_int = 16;
pub const AU_SESSION_FLAG_HAS_TTY: c_int = 32;
pub const AU_SESSION_FLAG_IS_REMOTE: c_int = 4096;
pub const AU_SESSION_FLAG_HAS_CONSOLE_ACCESS: c_int = 8192;
pub const AU_SESSION_FLAG_HAS_AUTHENTICATED: c_int = 16384;
pub const enum_audit_session_flags = c_uint;
pub extern fn audit(?*const anyopaque, c_int) c_int;
pub extern fn auditon(c_int, ?*anyopaque, c_int) c_int;
pub extern fn auditctl([*c]const u8) c_int;
pub extern fn getauid([*c]au_id_t) c_int;
pub extern fn setauid([*c]const au_id_t) c_int;
pub extern fn getaudit_addr([*c]struct_auditinfo_addr, c_int) c_int;
pub extern fn setaudit_addr([*c]const struct_auditinfo_addr, c_int) c_int;
pub extern fn getaudit([*c]struct_auditinfo) c_int;
pub extern fn setaudit([*c]const struct_auditinfo) c_int;
pub const boolean_t = c_int;
pub const natural_t = __darwin_natural_t;
pub const integer_t = c_int;
pub const vm_offset_t = usize;
pub const vm_size_t = usize;
pub const mach_vm_address_t = u64;
pub const mach_vm_offset_t = u64;
pub const mach_vm_size_t = u64;
pub const vm_map_offset_t = u64;
pub const vm_map_address_t = u64;
pub const vm_map_size_t = u64;
pub const vm32_offset_t = u32;
pub const vm32_address_t = u32;
pub const vm32_size_t = u32;
pub const mach_port_context_t = vm_offset_t;
pub const mach_port_name_t = natural_t;
pub const mach_port_name_array_t = [*c]mach_port_name_t;
pub const mach_port_t = __darwin_mach_port_t;
pub const mach_port_array_t = [*c]mach_port_t;
pub const mach_port_right_t = natural_t;
pub const mach_port_type_t = natural_t;
pub const mach_port_type_array_t = [*c]mach_port_type_t;
pub const mach_port_urefs_t = natural_t;
pub const mach_port_delta_t = integer_t;
pub const mach_port_seqno_t = natural_t;
pub const mach_port_mscount_t = natural_t;
pub const mach_port_msgcount_t = natural_t;
pub const mach_port_rights_t = natural_t;
pub const mach_port_srights_t = c_uint;
pub const struct_mach_port_status = extern struct {
    mps_pset: mach_port_rights_t = @import("std").mem.zeroes(mach_port_rights_t),
    mps_seqno: mach_port_seqno_t = @import("std").mem.zeroes(mach_port_seqno_t),
    mps_mscount: mach_port_mscount_t = @import("std").mem.zeroes(mach_port_mscount_t),
    mps_qlimit: mach_port_msgcount_t = @import("std").mem.zeroes(mach_port_msgcount_t),
    mps_msgcount: mach_port_msgcount_t = @import("std").mem.zeroes(mach_port_msgcount_t),
    mps_sorights: mach_port_rights_t = @import("std").mem.zeroes(mach_port_rights_t),
    mps_srights: boolean_t = @import("std").mem.zeroes(boolean_t),
    mps_pdrequest: boolean_t = @import("std").mem.zeroes(boolean_t),
    mps_nsrequest: boolean_t = @import("std").mem.zeroes(boolean_t),
    mps_flags: natural_t = @import("std").mem.zeroes(natural_t),
};
pub const mach_port_status_t = struct_mach_port_status;
pub const struct_mach_port_limits = extern struct {
    mpl_qlimit: mach_port_msgcount_t = @import("std").mem.zeroes(mach_port_msgcount_t),
};
pub const mach_port_limits_t = struct_mach_port_limits;
pub const struct_mach_port_info_ext = extern struct {
    mpie_status: mach_port_status_t = @import("std").mem.zeroes(mach_port_status_t),
    mpie_boost_cnt: mach_port_msgcount_t = @import("std").mem.zeroes(mach_port_msgcount_t),
    reserved: [6]u32 = @import("std").mem.zeroes([6]u32),
};
pub const mach_port_info_ext_t = struct_mach_port_info_ext;
pub const struct_mach_port_guard_info = extern struct {
    mpgi_guard: u64 = @import("std").mem.zeroes(u64),
};
pub const mach_port_guard_info_t = struct_mach_port_guard_info;
pub const mach_port_info_t = [*c]integer_t;
pub const mach_port_flavor_t = c_int;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/port.h:329:26: warning: struct demoted to opaque type - has bitfield
pub const struct_mach_port_qos = opaque {};
pub const mach_port_qos_t = struct_mach_port_qos;
pub const struct_mach_service_port_info = extern struct {
    mspi_string_name: [255]u8 = @import("std").mem.zeroes([255]u8),
    mspi_domain_type: u8 = @import("std").mem.zeroes(u8),
};
pub const mach_service_port_info_data_t = struct_mach_service_port_info;
pub const mach_service_port_info_t = [*c]struct_mach_service_port_info;
const union_unnamed_2 = extern union {
    reserved: [2]u64,
    work_interval_port: mach_port_name_t,
    service_port_info: mach_service_port_info_t,
    service_port_name: mach_port_name_t,
};
pub const struct_mach_port_options = extern struct {
    flags: u32 = @import("std").mem.zeroes(u32),
    mpl: mach_port_limits_t = @import("std").mem.zeroes(mach_port_limits_t),
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const mach_port_options_t = struct_mach_port_options;
pub const mach_port_options_ptr_t = [*c]mach_port_options_t;
pub const kGUARD_EXC_DESTROY: c_int = 1;
pub const kGUARD_EXC_MOD_REFS: c_int = 2;
pub const kGUARD_EXC_INVALID_OPTIONS: c_int = 3;
pub const kGUARD_EXC_SET_CONTEXT: c_int = 4;
pub const kGUARD_EXC_THREAD_SET_STATE: c_int = 5;
pub const kGUARD_EXC_EXCEPTION_BEHAVIOR_ENFORCE: c_int = 6;
pub const kGUARD_EXC_UNGUARDED: c_int = 8;
pub const kGUARD_EXC_INCORRECT_GUARD: c_int = 16;
pub const kGUARD_EXC_IMMOVABLE: c_int = 32;
pub const kGUARD_EXC_STRICT_REPLY: c_int = 64;
pub const kGUARD_EXC_MSG_FILTERED: c_int = 128;
pub const kGUARD_EXC_INVALID_RIGHT: c_int = 256;
pub const kGUARD_EXC_INVALID_NAME: c_int = 512;
pub const kGUARD_EXC_INVALID_VALUE: c_int = 1024;
pub const kGUARD_EXC_INVALID_ARGUMENT: c_int = 2048;
pub const kGUARD_EXC_RIGHT_EXISTS: c_int = 4096;
pub const kGUARD_EXC_KERN_NO_SPACE: c_int = 8192;
pub const kGUARD_EXC_KERN_FAILURE: c_int = 16384;
pub const kGUARD_EXC_KERN_RESOURCE: c_int = 32768;
pub const kGUARD_EXC_SEND_INVALID_REPLY: c_int = 65536;
pub const kGUARD_EXC_SEND_INVALID_VOUCHER: c_int = 131072;
pub const kGUARD_EXC_SEND_INVALID_RIGHT: c_int = 262144;
pub const kGUARD_EXC_RCV_INVALID_NAME: c_int = 524288;
pub const kGUARD_EXC_RCV_GUARDED_DESC: c_int = 1048576;
pub const kGUARD_EXC_MOD_REFS_NON_FATAL: c_int = 2097152;
pub const kGUARD_EXC_IMMOVABLE_NON_FATAL: c_int = 4194304;
pub const kGUARD_EXC_REQUIRE_REPLY_PORT_SEMANTICS: c_int = 8388608;
pub const enum_mach_port_guard_exception_codes = c_uint;
pub extern fn audit_session_self() mach_port_name_t;
pub extern fn audit_session_join(port: mach_port_name_t) au_asid_t;
pub extern fn audit_session_port(asid: au_asid_t, portname: [*c]mach_port_name_t) c_int;
pub const struct_label = opaque {};
pub const struct_ucred = opaque {};
pub const struct_posix_cred = opaque {};
pub const kauth_cred_t = ?*struct_ucred;
pub const posix_cred_t = ?*struct_posix_cred;
pub const struct_xucred = extern struct {
    cr_version: u_int = @import("std").mem.zeroes(u_int),
    cr_uid: uid_t = @import("std").mem.zeroes(uid_t),
    cr_ngroups: c_short = @import("std").mem.zeroes(c_short),
    cr_groups: [16]gid_t = @import("std").mem.zeroes([16]gid_t),
};
pub const struct_timeval = extern struct {
    tv_sec: __darwin_time_t = @import("std").mem.zeroes(__darwin_time_t),
    tv_usec: __darwin_suseconds_t = @import("std").mem.zeroes(__darwin_suseconds_t),
};
pub const struct_timeval64 = extern struct {
    tv_sec: __int64_t = @import("std").mem.zeroes(__int64_t),
    tv_usec: __int64_t = @import("std").mem.zeroes(__int64_t),
};
pub const struct_itimerval = extern struct {
    it_interval: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    it_value: struct_timeval = @import("std").mem.zeroes(struct_timeval),
};
pub const struct_timezone = extern struct {
    tz_minuteswest: c_int = @import("std").mem.zeroes(c_int),
    tz_dsttime: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_clockinfo = extern struct {
    hz: c_int = @import("std").mem.zeroes(c_int),
    tick: c_int = @import("std").mem.zeroes(c_int),
    tickadj: c_int = @import("std").mem.zeroes(c_int),
    stathz: c_int = @import("std").mem.zeroes(c_int),
    profhz: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn adjtime([*c]const struct_timeval, [*c]struct_timeval) c_int;
pub extern fn futimes(c_int, [*c]const struct_timeval) c_int;
pub extern fn lutimes([*c]const u8, [*c]const struct_timeval) c_int;
pub extern fn settimeofday([*c]const struct_timeval, [*c]const struct_timezone) c_int;
pub extern fn getitimer(c_int, [*c]struct_itimerval) c_int;
pub extern fn gettimeofday(noalias [*c]struct_timeval, noalias ?*anyopaque) c_int;
pub extern fn select(c_int, noalias [*c]fd_set, noalias [*c]fd_set, noalias [*c]fd_set, noalias [*c]struct_timeval) c_int;
pub extern fn setitimer(c_int, noalias [*c]const struct_itimerval, noalias [*c]struct_itimerval) c_int;
pub extern fn utimes([*c]const u8, [*c]const struct_timeval) c_int;
pub const text_encoding_t = u_int32_t;
pub const fsobj_type_t = u_int32_t;
pub const fsobj_tag_t = u_int32_t;
pub const fsfile_type_t = u_int32_t;
pub const fsvolid_t = u_int32_t;
pub const struct_fsobj_id = extern struct {
    fid_objno: u_int32_t = @import("std").mem.zeroes(u_int32_t),
    fid_generation: u_int32_t = @import("std").mem.zeroes(u_int32_t),
};
pub const fsobj_id_t = struct_fsobj_id;
pub const attrgroup_t = u_int32_t;
pub const struct_attrlist = extern struct {
    bitmapcount: u_short = @import("std").mem.zeroes(u_short),
    reserved: u_int16_t = @import("std").mem.zeroes(u_int16_t),
    commonattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    volattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    dirattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    fileattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    forkattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
};
pub const struct_attribute_set = extern struct {
    commonattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    volattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    dirattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    fileattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
    forkattr: attrgroup_t = @import("std").mem.zeroes(attrgroup_t),
};
pub const attribute_set_t = struct_attribute_set;
pub const struct_attrreference = extern struct {
    attr_dataoffset: i32 = @import("std").mem.zeroes(i32),
    attr_length: u_int32_t = @import("std").mem.zeroes(u_int32_t),
};
pub const attrreference_t = struct_attrreference;
pub const struct_diskextent = extern struct {
    startblock: u_int32_t = @import("std").mem.zeroes(u_int32_t),
    blockcount: u_int32_t = @import("std").mem.zeroes(u_int32_t),
};
pub const extentrecord = [8]struct_diskextent;
pub const vol_capabilities_set_t = [4]u_int32_t;
pub const struct_vol_capabilities_attr = extern struct {
    capabilities: vol_capabilities_set_t = @import("std").mem.zeroes(vol_capabilities_set_t),
    valid: vol_capabilities_set_t = @import("std").mem.zeroes(vol_capabilities_set_t),
};
pub const vol_capabilities_attr_t = struct_vol_capabilities_attr;
pub const struct_vol_attributes_attr = extern struct {
    validattr: attribute_set_t = @import("std").mem.zeroes(attribute_set_t),
    nativeattr: attribute_set_t = @import("std").mem.zeroes(attribute_set_t),
};
pub const vol_attributes_attr_t = struct_vol_attributes_attr;
pub const struct_fssearchblock = extern struct {
    returnattrs: [*c]struct_attrlist = @import("std").mem.zeroes([*c]struct_attrlist),
    returnbuffer: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    returnbuffersize: usize = @import("std").mem.zeroes(usize),
    maxmatches: u_long = @import("std").mem.zeroes(u_long),
    timelimit: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    searchparams1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    sizeofsearchparams1: usize = @import("std").mem.zeroes(usize),
    searchparams2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    sizeofsearchparams2: usize = @import("std").mem.zeroes(usize),
    searchattrs: struct_attrlist = @import("std").mem.zeroes(struct_attrlist),
};
pub const struct_searchstate = extern struct {
    ss_union_flags: u32 align(1) = @import("std").mem.zeroes(u32),
    ss_union_layer: u32 align(1) = @import("std").mem.zeroes(u32),
    ss_fsstate: [548]u_char align(1) = @import("std").mem.zeroes([548]u_char),
};
pub const os_function_t = ?*const fn (?*anyopaque) callconv(.C) void;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:330:16: warning: unsupported type: 'BlockPointer'
pub const os_block_t = @compileError("unable to resolve typedef child type");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:330:16
pub const struct_fsid = extern struct {
    val: [2]i32 = @import("std").mem.zeroes([2]i32),
};
pub const fsid_t = struct_fsid;
pub const struct_secure_boot_cryptex_args = extern struct {
    sbc_version: u_int32_t align(1) = @import("std").mem.zeroes(u_int32_t),
    sbc_4cc: u_int32_t align(1) = @import("std").mem.zeroes(u_int32_t),
    sbc_authentic_manifest_fd: c_int align(1) = @import("std").mem.zeroes(c_int),
    sbc_user_manifest_fd: c_int align(1) = @import("std").mem.zeroes(c_int),
    sbc_payload_fd: c_int align(1) = @import("std").mem.zeroes(c_int),
    sbc_flags: u_int64_t align(1) = @import("std").mem.zeroes(u_int64_t),
};
pub const secure_boot_cryptex_args_t = struct_secure_boot_cryptex_args;
pub const union_graft_args = extern union {
    max_size: [512]u_int8_t,
    sbc_args: secure_boot_cryptex_args_t,
};
pub const graftdmg_args_un = union_graft_args;
pub const struct_mount = opaque {};
pub const mount_t = ?*struct_mount;
pub const struct_vnode = opaque {};
pub const vnode_t = ?*struct_vnode;
pub const struct_statfs = extern struct {
    f_bsize: u32 = @import("std").mem.zeroes(u32),
    f_iosize: i32 = @import("std").mem.zeroes(i32),
    f_blocks: u64 = @import("std").mem.zeroes(u64),
    f_bfree: u64 = @import("std").mem.zeroes(u64),
    f_bavail: u64 = @import("std").mem.zeroes(u64),
    f_files: u64 = @import("std").mem.zeroes(u64),
    f_ffree: u64 = @import("std").mem.zeroes(u64),
    f_fsid: fsid_t = @import("std").mem.zeroes(fsid_t),
    f_owner: uid_t = @import("std").mem.zeroes(uid_t),
    f_type: u32 = @import("std").mem.zeroes(u32),
    f_flags: u32 = @import("std").mem.zeroes(u32),
    f_fssubtype: u32 = @import("std").mem.zeroes(u32),
    f_fstypename: [16]u8 = @import("std").mem.zeroes([16]u8),
    f_mntonname: [1024]u8 = @import("std").mem.zeroes([1024]u8),
    f_mntfromname: [1024]u8 = @import("std").mem.zeroes([1024]u8),
    f_flags_ext: u32 = @import("std").mem.zeroes(u32),
    f_reserved: [7]u32 = @import("std").mem.zeroes([7]u32),
};
pub const struct_vfsstatfs = extern struct {
    f_bsize: u32 = @import("std").mem.zeroes(u32),
    f_iosize: usize = @import("std").mem.zeroes(usize),
    f_blocks: u64 = @import("std").mem.zeroes(u64),
    f_bfree: u64 = @import("std").mem.zeroes(u64),
    f_bavail: u64 = @import("std").mem.zeroes(u64),
    f_bused: u64 = @import("std").mem.zeroes(u64),
    f_files: u64 = @import("std").mem.zeroes(u64),
    f_ffree: u64 = @import("std").mem.zeroes(u64),
    f_fsid: fsid_t = @import("std").mem.zeroes(fsid_t),
    f_owner: uid_t = @import("std").mem.zeroes(uid_t),
    f_flags: u64 = @import("std").mem.zeroes(u64),
    f_fstypename: [16]u8 = @import("std").mem.zeroes([16]u8),
    f_mntonname: [1024]u8 = @import("std").mem.zeroes([1024]u8),
    f_mntfromname: [1024]u8 = @import("std").mem.zeroes([1024]u8),
    f_fssubtype: u32 = @import("std").mem.zeroes(u32),
    f_reserved: [2]?*anyopaque = @import("std").mem.zeroes([2]?*anyopaque),
};
pub const struct_vfsconf = extern struct {
    vfc_reserved1: u32 = @import("std").mem.zeroes(u32),
    vfc_name: [15]u8 = @import("std").mem.zeroes([15]u8),
    vfc_typenum: c_int = @import("std").mem.zeroes(c_int),
    vfc_refcount: c_int = @import("std").mem.zeroes(c_int),
    vfc_flags: c_int = @import("std").mem.zeroes(c_int),
    vfc_reserved2: u32 = @import("std").mem.zeroes(u32),
    vfc_reserved3: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_vfsidctl = extern struct {
    vc_vers: c_int = @import("std").mem.zeroes(c_int),
    vc_fsid: fsid_t = @import("std").mem.zeroes(fsid_t),
    vc_ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    vc_len: usize = @import("std").mem.zeroes(usize),
    vc_spare: [12]u_int32_t = @import("std").mem.zeroes([12]u_int32_t),
};
pub const struct_vfsquery = extern struct {
    vq_flags: u_int32_t = @import("std").mem.zeroes(u_int32_t),
    vq_spare: [31]u_int32_t = @import("std").mem.zeroes([31]u_int32_t),
};
pub const struct_vfs_server = extern struct {
    vs_minutes: i32 = @import("std").mem.zeroes(i32),
    vs_server_name: [768]u_int8_t = @import("std").mem.zeroes([768]u_int8_t),
};
pub const struct_netfs_status = extern struct {
    ns_status: u_int32_t align(8) = @import("std").mem.zeroes(u_int32_t),
    ns_mountopts: [512]u8 = @import("std").mem.zeroes([512]u8),
    ns_waittime: u32 = @import("std").mem.zeroes(u32),
    ns_threadcount: u32 = @import("std").mem.zeroes(u32),
    pub fn ns_threadids(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulonglong) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulonglong);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 528)));
    }
};
pub const struct_fhandle = extern struct {
    fh_len: c_uint = @import("std").mem.zeroes(c_uint),
    fh_data: [128]u8 = @import("std").mem.zeroes([128]u8),
};
pub const fhandle_t = struct_fhandle;
pub const GRAFTDMG_CRYPTEX_BOOT: u32 = 1;
pub const GRAFTDMG_CRYPTEX_PREBOOT: u32 = 2;
pub const GRAFTDMG_CRYPTEX_DOWNLEVEL: u32 = 3;
pub const GRAFTDMG_CRYPTEX_PDI_NONCE: u32 = 6;
pub const GRAFTDMG_CRYPTEX_EFFECTIVE_AP: u32 = 7;
pub const GRAFTDMG_CRYPTEX_MAX: u32 = 7;
pub const graftdmg_type_t = u32;
pub const CRYPTEX1_AUTH_ENV_GENERIC: u32 = 4;
pub const CRYPTEX1_AUTH_ENV_GENERIC_SUPPLEMENTAL: u32 = 5;
pub const CRYPTEX_AUTH_PDI_NONCE: u32 = 6;
pub const CRYPTEX_AUTH_MAX: u32 = 7;
pub const cryptex_auth_type_t = u32;
pub extern fn fhopen([*c]const struct_fhandle, c_int) c_int;
pub extern fn fstatfs(c_int, [*c]struct_statfs) c_int;
pub extern fn getfh([*c]const u8, [*c]fhandle_t) c_int;
pub extern fn getfsstat([*c]struct_statfs, c_int, c_int) c_int;
pub extern fn getmntinfo([*c][*c]struct_statfs, c_int) c_int;
pub extern fn getmntinfo_r_np([*c][*c]struct_statfs, c_int) c_int;
pub extern fn mount([*c]const u8, [*c]const u8, c_int, ?*anyopaque) c_int;
pub extern fn fmount([*c]const u8, c_int, c_int, ?*anyopaque) c_int;
pub extern fn statfs([*c]const u8, [*c]struct_statfs) c_int;
pub extern fn unmount([*c]const u8, c_int) c_int;
pub extern fn getvfsbyname([*c]const u8, [*c]struct_vfsconf) c_int;
pub const struct_fuse = opaque {};
pub const struct_fuse_cmd = opaque {};
pub const fuse_fill_dir_t = ?*const fn (?*anyopaque, [*c]const u8, [*c]const struct_stat, off_t) callconv(.C) c_int;
pub const struct_fuse_dirhandle = opaque {};
pub const fuse_dirh_t = ?*struct_fuse_dirhandle;
pub const fuse_dirfil_t = ?*const fn (fuse_dirh_t, [*c]const u8, c_int, ino_t) callconv(.C) c_int;
// /usr/local/include/fuse/fuse.h:483:15: warning: struct demoted to opaque type - has bitfield
pub const struct_fuse_operations = opaque {};
pub const struct_fuse_context = extern struct {
    fuse: ?*struct_fuse = @import("std").mem.zeroes(?*struct_fuse),
    uid: uid_t = @import("std").mem.zeroes(uid_t),
    gid: gid_t = @import("std").mem.zeroes(gid_t),
    pid: pid_t = @import("std").mem.zeroes(pid_t),
    private_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    umask: mode_t = @import("std").mem.zeroes(mode_t),
};
pub extern fn fuse_new(ch: ?*struct_fuse_chan, args: [*c]struct_fuse_args, op: ?*const struct_fuse_operations, op_size: usize, user_data: ?*anyopaque) ?*struct_fuse;
pub extern fn fuse_destroy(f: ?*struct_fuse) void;
pub extern fn fuse_loop(f: ?*struct_fuse) c_int;
pub extern fn fuse_exit(f: ?*struct_fuse) void;
pub extern fn fuse_loop_mt(f: ?*struct_fuse) c_int;
pub extern fn fuse_get_context() [*c]struct_fuse_context;
pub extern fn fuse_getgroups(size: c_int, list: [*c]gid_t) c_int;
pub extern fn fuse_interrupted() c_int;
pub extern fn fuse_invalidate_path(f: ?*struct_fuse, path: [*c]const u8) c_int;
pub extern fn fuse_invalidate(f: ?*struct_fuse, path: [*c]const u8) c_int;
pub extern fn fuse_is_lib_option(opt: [*c]const u8) c_int;
pub extern fn fuse_main_real(argc: c_int, argv: [*c][*c]u8, op: ?*const struct_fuse_operations, op_size: usize, user_data: ?*anyopaque) c_int;
pub extern fn fuse_start_cleanup_thread(fuse: ?*struct_fuse) c_int;
pub extern fn fuse_stop_cleanup_thread(fuse: ?*struct_fuse) void;
pub extern fn fuse_clean_cache(fuse: ?*struct_fuse) c_int;
pub const struct_fuse_fs = opaque {};
pub extern fn fuse_fs_setattr_x(fs: ?*struct_fuse_fs, path: [*c]const u8, attr: [*c]struct_setattr_x) c_int;
pub extern fn fuse_fs_fsetattr_x(fs: ?*struct_fuse_fs, path: [*c]const u8, attr: [*c]struct_setattr_x, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_getattr(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_stat) c_int;
pub extern fn fuse_fs_fgetattr(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_stat, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_rename(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8) c_int;
pub extern fn fuse_fs_renamex(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8, flags: c_uint) c_int;
pub extern fn fuse_fs_setvolname(fs: ?*struct_fuse_fs, volname: [*c]const u8) c_int;
pub extern fn fuse_fs_exchange(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8, flags: c_ulong) c_int;
pub extern fn fuse_fs_unlink(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_rmdir(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_symlink(fs: ?*struct_fuse_fs, linkname: [*c]const u8, path: [*c]const u8) c_int;
pub extern fn fuse_fs_link(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8) c_int;
pub extern fn fuse_fs_release(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_open(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, bufp: [*c][*c]struct_fuse_bufvec, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]const u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_fuse_bufvec, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_fsync(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_flush(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_statfs(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_statvfs) c_int;
pub extern fn fuse_fs_statfs_x(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_statfs) c_int;
pub extern fn fuse_fs_opendir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_readdir(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: ?*anyopaque, filler: fuse_fill_dir_t, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_fsyncdir(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_releasedir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_create(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_lock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, cmd: c_int, lock: [*c]struct_flock) c_int;
pub extern fn fuse_fs_flock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, op: c_int) c_int;
pub extern fn fuse_fs_chflags(fs: ?*struct_fuse_fs, path: [*c]const u8, flags: u32) c_int;
pub extern fn fuse_fs_getxtimes(fs: ?*struct_fuse_fs, path: [*c]const u8, bkuptime: [*c]struct_timespec, crtime: [*c]struct_timespec) c_int;
pub extern fn fuse_fs_setbkuptime(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: [*c]const struct_timespec) c_int;
pub extern fn fuse_fs_setchgtime(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: [*c]const struct_timespec) c_int;
pub extern fn fuse_fs_setcrtime(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: [*c]const struct_timespec) c_int;
pub extern fn fuse_fs_chmod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t) c_int;
pub extern fn fuse_fs_chown(fs: ?*struct_fuse_fs, path: [*c]const u8, uid: uid_t, gid: gid_t) c_int;
pub extern fn fuse_fs_truncate(fs: ?*struct_fuse_fs, path: [*c]const u8, size: off_t) c_int;
pub extern fn fuse_fs_ftruncate(fs: ?*struct_fuse_fs, path: [*c]const u8, size: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_utimens(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: [*c]const struct_timespec) c_int;
pub extern fn fuse_fs_access(fs: ?*struct_fuse_fs, path: [*c]const u8, mask: c_int) c_int;
pub extern fn fuse_fs_readlink(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, len: usize) c_int;
pub extern fn fuse_fs_mknod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, rdev: dev_t) c_int;
pub extern fn fuse_fs_mkdir(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t) c_int;
pub extern fn fuse_fs_setxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]const u8, size: usize, flags: c_int, position: u32) c_int;
pub extern fn fuse_fs_getxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]u8, size: usize, position: u32) c_int;
pub extern fn fuse_fs_listxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, list: [*c]u8, size: usize) c_int;
pub extern fn fuse_fs_removexattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8) c_int;
pub extern fn fuse_fs_bmap(fs: ?*struct_fuse_fs, path: [*c]const u8, blocksize: usize, idx: [*c]u64) c_int;
pub extern fn fuse_fs_ioctl(fs: ?*struct_fuse_fs, path: [*c]const u8, cmd: c_int, arg: ?*anyopaque, fi: ?*struct_fuse_file_info, flags: c_uint, data: ?*anyopaque) c_int;
pub extern fn fuse_fs_poll(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, ph: ?*struct_fuse_pollhandle, reventsp: [*c]c_uint) c_int;
pub extern fn fuse_fs_fallocate(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: c_int, offset: off_t, length: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_init(fs: ?*struct_fuse_fs, conn: ?*struct_fuse_conn_info) void;
pub extern fn fuse_fs_destroy(fs: ?*struct_fuse_fs) void;
pub extern fn fuse_notify_poll(ph: ?*struct_fuse_pollhandle) c_int;
pub extern fn fuse_fs_new(op: ?*const struct_fuse_operations, op_size: usize, user_data: ?*anyopaque) ?*struct_fuse_fs;
pub const struct_fusemod_so_3 = opaque {};
pub const struct_fuse_module = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    factory: ?*const fn ([*c]struct_fuse_args, [*c]?*struct_fuse_fs) callconv(.C) ?*struct_fuse_fs = @import("std").mem.zeroes(?*const fn ([*c]struct_fuse_args, [*c]?*struct_fuse_fs) callconv(.C) ?*struct_fuse_fs),
    next: [*c]struct_fuse_module = @import("std").mem.zeroes([*c]struct_fuse_module),
    so: ?*struct_fusemod_so_3 = @import("std").mem.zeroes(?*struct_fusemod_so_3),
    ctr: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn fuse_register_module(mod: [*c]struct_fuse_module) void;
pub const fuse_processor_t = ?*const fn (?*struct_fuse, ?*struct_fuse_cmd, ?*anyopaque) callconv(.C) void;
pub extern fn fuse_setup(argc: c_int, argv: [*c][*c]u8, op: ?*const struct_fuse_operations, op_size: usize, mountpoint: [*c][*c]u8, multithreaded: [*c]c_int, user_data: ?*anyopaque) ?*struct_fuse;
pub extern fn fuse_teardown(fuse: ?*struct_fuse, mountpoint: [*c]u8) void;
pub extern fn fuse_read_cmd(f: ?*struct_fuse) ?*struct_fuse_cmd;
pub extern fn fuse_process_cmd(f: ?*struct_fuse, cmd: ?*struct_fuse_cmd) void;
pub extern fn fuse_loop_mt_proc(f: ?*struct_fuse, proc: fuse_processor_t, data: ?*anyopaque) c_int;
pub extern fn fuse_exited(f: ?*struct_fuse) c_int;
pub extern fn fuse_set_getcontext_func(func: ?*const fn () callconv(.C) [*c]struct_fuse_context) void;
pub extern fn fuse_get_session(f: ?*struct_fuse) ?*struct_fuse_session;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 7);
pub const __clang_version__ = "18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __block = @compileError("unable to translate macro: undefined identifier `__blocks__`");
// (no file):42:9
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):97:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):103:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):199:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):221:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):229:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`");
// (no file):320:9
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`");
// (no file):351:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`");
// (no file):352:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`");
// (no file):353:9
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 1);
pub const TARGET_OS_OSX = @as(c_int, 1);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_STATE_ZA = @as(c_int, 1);
pub const __ARM_STATE_ZT0 = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __weak = @compileError("unable to translate macro: undefined identifier `objc_gc`");
// (no file):415:9
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140401, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140401, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const FUSE_USE_VERSION = @as(c_int, 31);
pub const _FILE_OFFSET_BITS = @as(c_int, 64);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const _FUSE_H_ = "";
pub const _FUSE_COMMON_H_ = "";
pub const _FUSE_OPT_H_ = "";
pub const FUSE_OPT_KEY = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/local/include/fuse/fuse_opt.h:97:9
pub const FUSE_OPT_END = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/local/include/fuse/fuse_opt.h:103:9
pub const FUSE_ARGS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/local/include/fuse/fuse_opt.h:122:9
pub const FUSE_OPT_KEY_OPT = -@as(c_int, 1);
pub const FUSE_OPT_KEY_NONOPT = -@as(c_int, 2);
pub const FUSE_OPT_KEY_KEEP = -@as(c_int, 3);
pub const FUSE_OPT_KEY_DISCARD = -@as(c_int, 4);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _SYS__TYPES_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:202:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:214:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:218:10
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    _ = &_msg;
    return __deprecated_msg(_msg);
}
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:229:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:235:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:257:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__disable_tail_calls__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:290:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:302:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:313:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:323:9
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:357:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:370:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:383:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:386:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:407:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:409:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:411:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:413:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:416:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:419:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:423:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:427:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:431:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:436:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:440:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:444:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:448:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:457:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:478:9
pub const __has_safe_buffers = @as(c_int, 1);
pub const __unsafe_buffer_usage = @compileError("unable to translate macro: undefined identifier `__unsafe_buffer_usage__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:559:9
pub const __unsafe_buffer_usage_begin = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:565:9
pub const __unsafe_buffer_usage_end = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:566:9
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:751:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:752:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:753:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:754:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:755:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:757:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:758:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:759:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:760:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:761:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:763:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:764:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:407:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:413:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:419:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:425:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:431:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:437:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:443:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:449:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:455:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:461:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:467:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:473:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:479:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:491:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:497:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:503:9
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:774:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:837:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:935:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:949:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:963:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:964:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:965:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:966:9
pub const __null_terminated = "";
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:976:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:977:9
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:988:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:989:9
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub const __ptrcheck_unavailable_r = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:998:9
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1027:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1030:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1031:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1038:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1051:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1053:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1055:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1057:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:83:9
pub const _INTPTR_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    _ = &a_ptr;
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const _SYS_TYPES_H_ = "";
pub const __SYS_APPLEAPIOPTS_H__ = "";
pub const __APPLE_API_STANDARD = "";
pub const __APPLE_API_STABLE = "";
pub const __APPLE_API_EVOLVING = "";
pub const __APPLE_API_UNSTABLE = "";
pub const __APPLE_API_PRIVATE = "";
pub const __APPLE_API_OBSOLETE = "";
pub const _BSD_MACHINE_ENDIAN_H_ = "";
pub const _ARM__ENDIAN_H_ = "";
pub const _QUAD_HIGHWORD = @as(c_int, 1);
pub const _QUAD_LOWWORD = @as(c_int, 0);
pub const __DARWIN_LITTLE_ENDIAN = @as(c_int, 1234);
pub const __DARWIN_BIG_ENDIAN = @as(c_int, 4321);
pub const __DARWIN_PDP_ENDIAN = @as(c_int, 3412);
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub const _SYS__ENDIAN_H_ = "";
pub const _OS__OSBYTEORDER_H = "";
pub inline fn __DARWIN_OSSwapConstInt16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0xff00)) >> @as(c_int, 8)) | ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0x00ff)) << @as(c_int, 8)));
}
pub inline fn __DARWIN_OSSwapConstInt32(x: anytype) __uint32_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint32_t, ((((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x000000ff)) << @as(c_int, 24)));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: anytype) __uint64_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint64_t, ((((((((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56)));
}
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:67:17
pub const _OS_OSBYTEORDERARM_H = "";
pub const _ARM_ARCH_H = "";
pub inline fn __DARWIN_OSSwapInt16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x));
}
pub inline fn __DARWIN_OSSwapInt32(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x)) {
    _ = &x;
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x);
}
pub inline fn __DARWIN_OSSwapInt64(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x)) {
    _ = &x;
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x);
}
pub inline fn ntohs(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn htons(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn ntohl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn htonl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn ntohll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn htonll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub const NTOHL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:144:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:145:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:146:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:147:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:148:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:149:9
pub const _U_CHAR = "";
pub const _U_SHORT = "";
pub const _U_INT = "";
pub const _U_LONG = "";
pub const __DARWIN_UINT = "";
pub const _CADDR_T = "";
pub const _DEV_T = "";
pub const _BLKCNT_T = "";
pub const _BLKSIZE_T = "";
pub const _GID_T = "";
pub const _IN_ADDR_T = "";
pub const _IN_PORT_T = "";
pub const _INO_T = "";
pub const _INO64_T = "";
pub const _KEY_T = "";
pub const _MODE_T = "";
pub const _NLINK_T = "";
pub const _ID_T = "";
pub const _PID_T = "";
pub const _OFF_T = "";
pub const _UID_T = "";
pub inline fn major(x: anytype) i32 {
    _ = &x;
    return @import("std").zig.c_translation.cast(i32, (@import("std").zig.c_translation.cast(u_int32_t, x) >> @as(c_int, 24)) & @as(c_int, 0xff));
}
pub inline fn minor(x: anytype) i32 {
    _ = &x;
    return @import("std").zig.c_translation.cast(i32, x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffff, .hex));
}
pub inline fn makedev(x: anytype, y: anytype) dev_t {
    _ = &x;
    _ = &y;
    return @import("std").zig.c_translation.cast(dev_t, (x << @as(c_int, 24)) | y);
}
pub const _CLOCK_T = "";
pub const _SIZE_T = "";
pub const _SSIZE_T = "";
pub const _TIME_T = "";
pub const _USECONDS_T = "";
pub const _SUSECONDS_T = "";
pub const _RSIZE_T = "";
pub const _ERRNO_T = "";
pub const _FD_SET = "";
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_DRIVERKIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101405, .decimal);
pub const __MAC_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_11_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110600, .decimal);
pub const __MAC_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __MAC_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __MAC_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __MAC_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __MAC_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __MAC_12_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120500, .decimal);
pub const __MAC_12_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120600, .decimal);
pub const __MAC_12_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120700, .decimal);
pub const __MAC_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __MAC_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __MAC_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __MAC_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __MAC_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __MAC_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __MAC_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __MAC_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __MAC_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __MAC_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __MAC_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __MAC_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __IPHONE_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __IPHONE_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __IPHONE_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __IPHONE_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __IPHONE_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __IPHONE_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __IPHONE_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __IPHONE_15_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150700, .decimal);
pub const __IPHONE_15_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150800, .decimal);
pub const __IPHONE_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __IPHONE_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __IPHONE_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __IPHONE_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __IPHONE_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __IPHONE_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __IPHONE_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __IPHONE_16_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160700, .decimal);
pub const __IPHONE_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __IPHONE_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __IPHONE_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __IPHONE_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __IPHONE_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __WATCHOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __WATCHOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __WATCHOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __WATCHOS_8_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80500, .decimal);
pub const __WATCHOS_8_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80600, .decimal);
pub const __WATCHOS_8_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80700, .decimal);
pub const __WATCHOS_8_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80800, .decimal);
pub const __WATCHOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __WATCHOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __WATCHOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __WATCHOS_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __WATCHOS_9_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90400, .decimal);
pub const __WATCHOS_9_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90500, .decimal);
pub const __WATCHOS_9_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90600, .decimal);
pub const __WATCHOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __WATCHOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __WATCHOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __WATCHOS_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __WATCHOS_10_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100400, .decimal);
pub const __TVOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __TVOS_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __TVOS_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __TVOS_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __TVOS_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __TVOS_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __TVOS_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __TVOS_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __TVOS_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __TVOS_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __TVOS_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __TVOS_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __TVOS_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __TVOS_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __TVOS_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __TVOS_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __TVOS_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __TVOS_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __BRIDGEOS_2_0 = @as(c_int, 20000);
pub const __BRIDGEOS_3_0 = @as(c_int, 30000);
pub const __BRIDGEOS_3_1 = @as(c_int, 30100);
pub const __BRIDGEOS_3_4 = @as(c_int, 30400);
pub const __BRIDGEOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __BRIDGEOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __BRIDGEOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __BRIDGEOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __BRIDGEOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __BRIDGEOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __BRIDGEOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __BRIDGEOS_6_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60400, .decimal);
pub const __BRIDGEOS_6_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60500, .decimal);
pub const __BRIDGEOS_6_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60600, .decimal);
pub const __BRIDGEOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __BRIDGEOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __BRIDGEOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __BRIDGEOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __BRIDGEOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __BRIDGEOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __BRIDGEOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __BRIDGEOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __BRIDGEOS_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __BRIDGEOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __BRIDGEOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __DRIVERKIT_19_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 210000, .decimal);
pub const __DRIVERKIT_22_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220000, .decimal);
pub const __DRIVERKIT_22_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220400, .decimal);
pub const __DRIVERKIT_22_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220500, .decimal);
pub const __DRIVERKIT_22_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220600, .decimal);
pub const __DRIVERKIT_23_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230000, .decimal);
pub const __DRIVERKIT_23_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230100, .decimal);
pub const __DRIVERKIT_23_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230200, .decimal);
pub const __DRIVERKIT_23_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230300, .decimal);
pub const __DRIVERKIT_23_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230400, .decimal);
pub const __VISIONOS_1_0 = @as(c_int, 10000);
pub const __VISIONOS_1_1 = @as(c_int, 10100);
pub const MAC_OS_X_VERSION_10_0 = __MAC_10_0;
pub const MAC_OS_X_VERSION_10_1 = __MAC_10_1;
pub const MAC_OS_X_VERSION_10_2 = __MAC_10_2;
pub const MAC_OS_X_VERSION_10_3 = __MAC_10_3;
pub const MAC_OS_X_VERSION_10_4 = __MAC_10_4;
pub const MAC_OS_X_VERSION_10_5 = __MAC_10_5;
pub const MAC_OS_X_VERSION_10_6 = __MAC_10_6;
pub const MAC_OS_X_VERSION_10_7 = __MAC_10_7;
pub const MAC_OS_X_VERSION_10_8 = __MAC_10_8;
pub const MAC_OS_X_VERSION_10_9 = __MAC_10_9;
pub const MAC_OS_X_VERSION_10_10 = __MAC_10_10;
pub const MAC_OS_X_VERSION_10_10_2 = __MAC_10_10_2;
pub const MAC_OS_X_VERSION_10_10_3 = __MAC_10_10_3;
pub const MAC_OS_X_VERSION_10_11 = __MAC_10_11;
pub const MAC_OS_X_VERSION_10_11_2 = __MAC_10_11_2;
pub const MAC_OS_X_VERSION_10_11_3 = __MAC_10_11_3;
pub const MAC_OS_X_VERSION_10_11_4 = __MAC_10_11_4;
pub const MAC_OS_X_VERSION_10_12 = __MAC_10_12;
pub const MAC_OS_X_VERSION_10_12_1 = __MAC_10_12_1;
pub const MAC_OS_X_VERSION_10_12_2 = __MAC_10_12_2;
pub const MAC_OS_X_VERSION_10_12_4 = __MAC_10_12_4;
pub const MAC_OS_X_VERSION_10_13 = __MAC_10_13;
pub const MAC_OS_X_VERSION_10_13_1 = __MAC_10_13_1;
pub const MAC_OS_X_VERSION_10_13_2 = __MAC_10_13_2;
pub const MAC_OS_X_VERSION_10_13_4 = __MAC_10_13_4;
pub const MAC_OS_X_VERSION_10_14 = __MAC_10_14;
pub const MAC_OS_X_VERSION_10_14_1 = __MAC_10_14_1;
pub const MAC_OS_X_VERSION_10_14_4 = __MAC_10_14_4;
pub const MAC_OS_X_VERSION_10_14_5 = __MAC_10_14_5;
pub const MAC_OS_X_VERSION_10_14_6 = __MAC_10_14_6;
pub const MAC_OS_X_VERSION_10_15 = __MAC_10_15;
pub const MAC_OS_X_VERSION_10_15_1 = __MAC_10_15_1;
pub const MAC_OS_X_VERSION_10_15_4 = __MAC_10_15_4;
pub const MAC_OS_X_VERSION_10_16 = __MAC_10_16;
pub const MAC_OS_VERSION_11_0 = __MAC_11_0;
pub const MAC_OS_VERSION_11_1 = __MAC_11_1;
pub const MAC_OS_VERSION_11_3 = __MAC_11_3;
pub const MAC_OS_VERSION_11_4 = __MAC_11_4;
pub const MAC_OS_VERSION_11_5 = __MAC_11_5;
pub const MAC_OS_VERSION_11_6 = __MAC_11_6;
pub const MAC_OS_VERSION_12_0 = __MAC_12_0;
pub const MAC_OS_VERSION_12_1 = __MAC_12_1;
pub const MAC_OS_VERSION_12_2 = __MAC_12_2;
pub const MAC_OS_VERSION_12_3 = __MAC_12_3;
pub const MAC_OS_VERSION_12_4 = __MAC_12_4;
pub const MAC_OS_VERSION_12_5 = __MAC_12_5;
pub const MAC_OS_VERSION_12_6 = __MAC_12_6;
pub const MAC_OS_VERSION_12_7 = __MAC_12_7;
pub const MAC_OS_VERSION_13_0 = __MAC_13_0;
pub const MAC_OS_VERSION_13_1 = __MAC_13_1;
pub const MAC_OS_VERSION_13_2 = __MAC_13_2;
pub const MAC_OS_VERSION_13_3 = __MAC_13_3;
pub const MAC_OS_VERSION_13_4 = __MAC_13_4;
pub const MAC_OS_VERSION_13_5 = __MAC_13_5;
pub const MAC_OS_VERSION_13_6 = __MAC_13_6;
pub const MAC_OS_VERSION_14_0 = __MAC_14_0;
pub const MAC_OS_VERSION_14_1 = __MAC_14_1;
pub const MAC_OS_VERSION_14_2 = __MAC_14_2;
pub const MAC_OS_VERSION_14_3 = __MAC_14_3;
pub const MAC_OS_VERSION_14_4 = __MAC_14_4;
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_14_4;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:160:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:163:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `unavailable`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:172:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `weak_import`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:173:9
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __AVAILABILITY_INTERNAL_LEGACY__ = "";
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = @as(c_int, 1);
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2831:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2832:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2833:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2835:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2839:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2841:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2850:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2851:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2853:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2857:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2859:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2863:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2865:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2870:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2874:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2875:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2877:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2881:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2883:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2887:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2889:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2894:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2909:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2911:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2933:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2935:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2952:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2953:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2955:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2956:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2964:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2969:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2973:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2974:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2976:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2980:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2986:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2988:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2993:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2998:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3000:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3004:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3006:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3010:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3022:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3024:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3028:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3030:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3034:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3036:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3042:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3048:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3052:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3054:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3058:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3066:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3075:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3077:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3081:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3083:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3088:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3093:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3095:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3099:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3101:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3105:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3107:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3112:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3117:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3119:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3123:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3125:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3129:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3131:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3136:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3140:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3141:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3143:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3147:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3149:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3153:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3155:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3161:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3167:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3171:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3173:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3177:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3179:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3184:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3185:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3186:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3188:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3190:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3194:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3196:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3201:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3208:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3212:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3214:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3218:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3220:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3225:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3229:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3230:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3232:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3236:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3238:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3244:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3249:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3253:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3256:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3260:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3262:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3266:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3268:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3272:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3274:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3280:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3284:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3286:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3290:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3291:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3292:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3295:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3298:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3302:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3304:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3309:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3313:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3314:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3316:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3322:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3326:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3328:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3333:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3337:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3338:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3340:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3344:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3346:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3350:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3352:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3357:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3361:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3363:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3367:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3369:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3373:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3375:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3379:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3381:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3385:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3387:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3391:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3392:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3394:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3395:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3396:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3398:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3402:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3404:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3409:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3413:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3416:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3420:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3422:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3426:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3428:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3433:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3437:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3438:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3440:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3444:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3446:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3450:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3452:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3457:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3461:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3462:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3464:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3468:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3470:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3474:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3476:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3480:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3482:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3486:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3487:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3488:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3489:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3490:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3491:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3493:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3497:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3499:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3504:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3508:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3509:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3511:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3515:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3517:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3521:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3523:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3528:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3532:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3533:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3535:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3539:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3541:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3545:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3547:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3552:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3556:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3557:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3559:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3563:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3565:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3569:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3571:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3575:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3576:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3582:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3586:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3588:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3593:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3597:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3598:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3600:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3604:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3606:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3610:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3612:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3617:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3621:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3622:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3624:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3628:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3630:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3634:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3636:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3641:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3645:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3646:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3648:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3652:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3654:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3658:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3659:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3661:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3662:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3663:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3665:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3669:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3671:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3676:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3680:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3681:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3683:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3687:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3689:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3693:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3695:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3700:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3704:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3705:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3707:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3711:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3713:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3717:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3719:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3724:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3728:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3729:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3730:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3732:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3736:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3737:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3738:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3739:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3741:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3745:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3746:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3747:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3749:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3753:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3755:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3760:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3764:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3765:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3767:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3771:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3773:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3777:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3779:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3784:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3788:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3789:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3791:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3795:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3797:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3801:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3803:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3808:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3812:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3814:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3818:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3820:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3824:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3826:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3830:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3832:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3836:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3838:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3842:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3844:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3848:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3850:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3854:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3856:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3860:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3862:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3867:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3871:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3872:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3873:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3874:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3875:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3878:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3882:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3884:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3888:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3889:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3891:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3895:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3897:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3901:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3903:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3908:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3912:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3913:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3915:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3919:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3921:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3925:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3927:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3936:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3937:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3938:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3946:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3948:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3952:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3954:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3958:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3960:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3965:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3969:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3970:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3972:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3976:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3978:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3982:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3984:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3989:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3993:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3994:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3995:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3996:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4005:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4010:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4014:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4015:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4034:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4038:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4039:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4041:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4045:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4047:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4051:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4053:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4058:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4062:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4064:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4068:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4069:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4075:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4079:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4081:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4087:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4091:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4094:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4098:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4100:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4104:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4106:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4111:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4115:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4117:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4120:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4124:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4126:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4130:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4137:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4139:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4150:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4154:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4156:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4157:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4159:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4166:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4170:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4172:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4176:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4178:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4183:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4188:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4191:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4193:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4197:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4199:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4203:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4205:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4215:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4217:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4221:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4223:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4227:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4229:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4239:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4240:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4241:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4244:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4248:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4250:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4256:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4260:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4261:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4263:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4265:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4269:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4271:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4280:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4284:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4286:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4287:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4289:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4295:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4299:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4301:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4306:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4310:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4312:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4316:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4317:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4319:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4322:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4323:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4324:21
pub const __AVAILABILITY_INTERNAL__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4326:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4327:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4328:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4330:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4331:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4332:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4333:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4336:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4337:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4338:22
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:180:12
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:181:12
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:182:12
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:183:12
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:184:12
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:185:12
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:186:12
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:187:12
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:188:12
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:189:12
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:190:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:191:12
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:195:12
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:196:12
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:197:12
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:198:12
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:199:12
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:200:12
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:204:12
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:205:12
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:206:12
pub const __API_AVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:207:12
pub const __API_DEPRECATED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:208:12
pub const __API_UNAVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:209:12
pub const __API_AVAILABLE_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:210:12
pub const __API_DEPRECATED_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:211:12
pub const __API_UNAVAILABLE_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:212:12
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:219:11
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    _ = &x;
    return __API_RANGE_STRINGIFY2(x);
}
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:221:11
pub const __API_A = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:235:13
pub inline fn __API_AVAILABLE0(arg0: anytype) @TypeOf(__API_A(arg0)) {
    _ = &arg0;
    return __API_A(arg0);
}
pub inline fn __API_AVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A(arg0) ++ __API_A(arg1);
}
pub inline fn __API_AVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2);
}
pub inline fn __API_AVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3);
}
pub inline fn __API_AVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4);
}
pub inline fn __API_AVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5);
}
pub inline fn __API_AVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6);
}
pub inline fn __API_AVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7);
}
pub inline fn __API_AVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8);
}
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:246:13
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:248:13
pub inline fn __API_AVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_A_BEGIN(arg0)) {
    _ = &arg0;
    return __API_A_BEGIN(arg0);
}
pub inline fn __API_AVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1);
}
pub inline fn __API_AVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2);
}
pub inline fn __API_AVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3);
}
pub inline fn __API_AVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4);
}
pub inline fn __API_AVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5);
}
pub inline fn __API_AVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6);
}
pub inline fn __API_AVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7);
}
pub inline fn __API_AVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8);
}
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:259:13
pub const __API_D = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:263:13
pub inline fn __API_DEPRECATED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_D(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D(msg, arg0);
}
pub inline fn __API_DEPRECATED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2);
}
pub inline fn __API_DEPRECATED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3);
}
pub inline fn __API_DEPRECATED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4);
}
pub inline fn __API_DEPRECATED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5);
}
pub inline fn __API_DEPRECATED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6);
}
pub inline fn __API_DEPRECATED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7);
}
pub inline fn __API_DEPRECATED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8);
}
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:274:13
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:276:13
pub inline fn __API_DEPRECATED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_D_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8);
}
pub const __API_DEPRECATED_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:287:13
pub const __API_R = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:290:17
pub inline fn __API_DEPRECATED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_R(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_R(msg, arg0);
}
pub inline fn __API_DEPRECATED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1);
}
pub inline fn __API_DEPRECATED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2);
}
pub inline fn __API_DEPRECATED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3);
}
pub inline fn __API_DEPRECATED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4);
}
pub inline fn __API_DEPRECATED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5);
}
pub inline fn __API_DEPRECATED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6);
}
pub inline fn __API_DEPRECATED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7);
}
pub inline fn __API_DEPRECATED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7) ++ __API_R(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7) ++ __API_R(msg, arg8);
}
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:304:13
pub const __API_R_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:307:17
pub inline fn __API_DEPRECATED_BEGIN_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_R_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_R_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7) ++ __API_R_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7) ++ __API_R_BEGIN(msg, arg8);
}
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:321:13
pub const __API_U = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:332:13
pub inline fn __API_UNAVAILABLE0(arg0: anytype) @TypeOf(__API_U(arg0)) {
    _ = &arg0;
    return __API_U(arg0);
}
pub inline fn __API_UNAVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U(arg0) ++ __API_U(arg1);
}
pub inline fn __API_UNAVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2);
}
pub inline fn __API_UNAVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3);
}
pub inline fn __API_UNAVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4);
}
pub inline fn __API_UNAVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5);
}
pub inline fn __API_UNAVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6);
}
pub inline fn __API_UNAVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7);
}
pub inline fn __API_UNAVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8);
}
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:343:13
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:345:13
pub inline fn __API_UNAVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_U_BEGIN(arg0)) {
    _ = &arg0;
    return __API_U_BEGIN(arg0);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1);
}
pub inline fn __API_UNAVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2);
}
pub inline fn __API_UNAVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3);
}
pub inline fn __API_UNAVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4);
}
pub inline fn __API_UNAVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5);
}
pub inline fn __API_UNAVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6);
}
pub inline fn __API_UNAVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7);
}
pub inline fn __API_UNAVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8);
}
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:356:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:378:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:386:11
pub const __SPI_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:390:11
pub const __SPI_AVAILABLE_END = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:394:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:213:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:214:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:216:17
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:239:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:240:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:257:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:258:13
pub inline fn __OS_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg)) {
    _ = &_msg;
    return __OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg);
}
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:275:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:276:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:277:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:301:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:303:15
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:305:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:306:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:330:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:332:15
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:334:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:335:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:359:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:361:15
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:363:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:364:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:387:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:388:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:431:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:433:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:434:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:452:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:453:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:455:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:456:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:458:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:459:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:469:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:471:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:472:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:545:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:549:11
pub const __DARWIN_FD_SETSIZE = @as(c_int, 1024);
pub const __DARWIN_NBBY = @as(c_int, 8);
pub const __DARWIN_NFDBITS = @import("std").zig.c_translation.sizeof(__int32_t) * __DARWIN_NBBY;
pub inline fn __DARWIN_howmany(x: anytype, y: anytype) @TypeOf(if (@import("std").zig.c_translation.MacroArithmetic.rem(x, y) == @as(c_int, 0)) @import("std").zig.c_translation.MacroArithmetic.div(x, y) else @import("std").zig.c_translation.MacroArithmetic.div(x, y) + @as(c_int, 1)) {
    _ = &x;
    _ = &y;
    return if (@import("std").zig.c_translation.MacroArithmetic.rem(x, y) == @as(c_int, 0)) @import("std").zig.c_translation.MacroArithmetic.div(x, y) else @import("std").zig.c_translation.MacroArithmetic.div(x, y) + @as(c_int, 1);
}
pub inline fn __DARWIN_FD_SET(n: anytype, p: anytype) @TypeOf(__darwin_fd_set(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_set(n, p);
}
pub inline fn __DARWIN_FD_CLR(n: anytype, p: anytype) @TypeOf(__darwin_fd_clr(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_clr(n, p);
}
pub inline fn __DARWIN_FD_ISSET(n: anytype, p: anytype) @TypeOf(__darwin_fd_isset(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_isset(n, p);
}
pub const __DARWIN_FD_ZERO = @compileError("unable to translate macro: undefined identifier `__builtin_bzero`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h:115:9
pub const __DARWIN_FD_COPY = @compileError("unable to translate macro: undefined identifier `bcopy`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h:120:9
pub const NBBY = __DARWIN_NBBY;
pub const NFDBITS = __DARWIN_NFDBITS;
pub inline fn howmany(x: anytype, y: anytype) @TypeOf(__DARWIN_howmany(x, y)) {
    _ = &x;
    _ = &y;
    return __DARWIN_howmany(x, y);
}
pub const FD_SETSIZE = __DARWIN_FD_SETSIZE;
pub inline fn FD_SET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_SET(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_SET(n, p);
}
pub inline fn FD_CLR(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_CLR(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_CLR(n, p);
}
pub inline fn FD_ZERO(p: anytype) @TypeOf(__DARWIN_FD_ZERO(p)) {
    _ = &p;
    return __DARWIN_FD_ZERO(p);
}
pub inline fn FD_ISSET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_ISSET(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_ISSET(n, p);
}
pub inline fn FD_COPY(f: anytype, t: anytype) @TypeOf(__DARWIN_FD_COPY(f, t)) {
    _ = &f;
    _ = &t;
    return __DARWIN_FD_COPY(f, t);
}
pub const _PTHREAD_ATTR_T = "";
pub const _PTHREAD_COND_T = "";
pub const _PTHREAD_CONDATTR_T = "";
pub const _PTHREAD_MUTEX_T = "";
pub const _PTHREAD_MUTEXATTR_T = "";
pub const _PTHREAD_ONCE_T = "";
pub const _PTHREAD_RWLOCK_T = "";
pub const _PTHREAD_RWLOCKATTR_T = "";
pub const _PTHREAD_T = "";
pub const _PTHREAD_KEY_T = "";
pub const _FSBLKCNT_T = "";
pub const _FSFILCNT_T = "";
pub const FUSE_MAJOR_VERSION = @as(c_int, 2);
pub const FUSE_MINOR_VERSION = @as(c_int, 9);
pub inline fn FUSE_MAKE_VERSION(maj: anytype, min: anytype) @TypeOf((maj * @as(c_int, 10)) + min) {
    _ = &maj;
    _ = &min;
    return (maj * @as(c_int, 10)) + min;
}
pub const FUSE_VERSION = FUSE_MAKE_VERSION(FUSE_MAJOR_VERSION, FUSE_MINOR_VERSION);
pub const _SYS_STAT_H_ = "";
pub const _STRUCT_TIMESPEC = struct_timespec;
pub const __DARWIN_STRUCT_STAT64_TIMES = @compileError("unable to translate macro: undefined identifier `st_atimespec`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:128:9
pub const __DARWIN_STRUCT_STAT64 = @compileError("unable to translate macro: undefined identifier `st_dev`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:158:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atimespec`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:231:9
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtimespec`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:232:9
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctimespec`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:233:9
pub const st_birthtime = @compileError("unable to translate macro: undefined identifier `st_birthtimespec`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:234:9
pub const S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const S_IFIFO = @as(c_int, 0o010000);
pub const S_IFCHR = @as(c_int, 0o020000);
pub const S_IFDIR = @as(c_int, 0o040000);
pub const S_IFBLK = @as(c_int, 0o060000);
pub const S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub const S_IFWHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o160000, .octal);
pub const S_IRWXU = @as(c_int, 0o000700);
pub const S_IRUSR = @as(c_int, 0o000400);
pub const S_IWUSR = @as(c_int, 0o000200);
pub const S_IXUSR = @as(c_int, 0o000100);
pub const S_IRWXG = @as(c_int, 0o000070);
pub const S_IRGRP = @as(c_int, 0o000040);
pub const S_IWGRP = @as(c_int, 0o000020);
pub const S_IXGRP = @as(c_int, 0o000010);
pub const S_IRWXO = @as(c_int, 0o000007);
pub const S_IROTH = @as(c_int, 0o000004);
pub const S_IWOTH = @as(c_int, 0o000002);
pub const S_IXOTH = @as(c_int, 0o000001);
pub const S_ISUID = @as(c_int, 0o004000);
pub const S_ISGID = @as(c_int, 0o002000);
pub const S_ISVTX = @as(c_int, 0o001000);
pub const S_ISTXT = S_ISVTX;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub inline fn S_ISBLK(m: anytype) @TypeOf((m & S_IFMT) == S_IFBLK) {
    _ = &m;
    return (m & S_IFMT) == S_IFBLK;
}
pub inline fn S_ISCHR(m: anytype) @TypeOf((m & S_IFMT) == S_IFCHR) {
    _ = &m;
    return (m & S_IFMT) == S_IFCHR;
}
pub inline fn S_ISDIR(m: anytype) @TypeOf((m & S_IFMT) == S_IFDIR) {
    _ = &m;
    return (m & S_IFMT) == S_IFDIR;
}
pub inline fn S_ISFIFO(m: anytype) @TypeOf((m & S_IFMT) == S_IFIFO) {
    _ = &m;
    return (m & S_IFMT) == S_IFIFO;
}
pub inline fn S_ISREG(m: anytype) @TypeOf((m & S_IFMT) == S_IFREG) {
    _ = &m;
    return (m & S_IFMT) == S_IFREG;
}
pub inline fn S_ISLNK(m: anytype) @TypeOf((m & S_IFMT) == S_IFLNK) {
    _ = &m;
    return (m & S_IFMT) == S_IFLNK;
}
pub inline fn S_ISSOCK(m: anytype) @TypeOf((m & S_IFMT) == S_IFSOCK) {
    _ = &m;
    return (m & S_IFMT) == S_IFSOCK;
}
pub inline fn S_ISWHT(m: anytype) @TypeOf((m & S_IFMT) == S_IFWHT) {
    _ = &m;
    return (m & S_IFMT) == S_IFWHT;
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISTMO(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISTXT) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const UF_SETTABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ffff, .hex);
pub const UF_NODUMP = @as(c_int, 0x00000001);
pub const UF_IMMUTABLE = @as(c_int, 0x00000002);
pub const UF_APPEND = @as(c_int, 0x00000004);
pub const UF_OPAQUE = @as(c_int, 0x00000008);
pub const UF_COMPRESSED = @as(c_int, 0x00000020);
pub const UF_TRACKED = @as(c_int, 0x00000040);
pub const UF_DATAVAULT = @as(c_int, 0x00000080);
pub const UF_HIDDEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const SF_SUPPORTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x009f0000, .hex);
pub const SF_SETTABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3fff0000, .hex);
pub const SF_SYNTHETIC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hex);
pub const SF_ARCHIVED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const SF_IMMUTABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const SF_APPEND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const SF_RESTRICTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const SF_NOUNLINK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const SF_FIRMLINK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const SF_DATALESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const EF_MAY_SHARE_BLOCKS = @as(c_int, 0x00000001);
pub const EF_NO_XATTRS = @as(c_int, 0x00000002);
pub const EF_IS_SYNC_ROOT = @as(c_int, 0x00000004);
pub const EF_IS_PURGEABLE = @as(c_int, 0x00000008);
pub const EF_IS_SPARSE = @as(c_int, 0x00000010);
pub const EF_IS_SYNTHETIC = @as(c_int, 0x00000020);
pub const EF_SHARES_ALL_BLOCKS = @as(c_int, 0x00000040);
pub const UTIME_NOW = -@as(c_int, 1);
pub const UTIME_OMIT = -@as(c_int, 2);
pub const _FILESEC_T = "";
pub inline fn SETATTR_WANTS_MODE(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 0))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 0));
}
pub inline fn SETATTR_WANTS_UID(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 1))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 1));
}
pub inline fn SETATTR_WANTS_GID(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 2))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 2));
}
pub inline fn SETATTR_WANTS_SIZE(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 3))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 3));
}
pub inline fn SETATTR_WANTS_ACCTIME(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 4))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 4));
}
pub inline fn SETATTR_WANTS_MODTIME(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 5))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 5));
}
pub inline fn SETATTR_WANTS_CRTIME(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 28))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 28));
}
pub inline fn SETATTR_WANTS_CHGTIME(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 29))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 29));
}
pub inline fn SETATTR_WANTS_BKUPTIME(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 30))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 30));
}
pub inline fn SETATTR_WANTS_FLAGS(attr: anytype) @TypeOf(attr.*.valid & (@as(c_int, 1) << @as(c_int, 31))) {
    _ = &attr;
    return attr.*.valid & (@as(c_int, 1) << @as(c_int, 31));
}
pub const FUSE_CAP_ASYNC_READ = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_CAP_POSIX_LOCKS = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_CAP_ATOMIC_O_TRUNC = @as(c_int, 1) << @as(c_int, 3);
pub const FUSE_CAP_EXPORT_SUPPORT = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_CAP_BIG_WRITES = @as(c_int, 1) << @as(c_int, 5);
pub const FUSE_CAP_DONT_MASK = @as(c_int, 1) << @as(c_int, 6);
pub const FUSE_CAP_SPLICE_WRITE = @as(c_int, 1) << @as(c_int, 7);
pub const FUSE_CAP_SPLICE_MOVE = @as(c_int, 1) << @as(c_int, 8);
pub const FUSE_CAP_SPLICE_READ = @as(c_int, 1) << @as(c_int, 9);
pub const FUSE_CAP_FLOCK_LOCKS = @as(c_int, 1) << @as(c_int, 10);
pub const FUSE_CAP_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 11);
pub const FUSE_CAP_ACCESS_EXTENDED = @as(c_int, 1) << @as(c_int, 23);
pub const FUSE_CAP_NODE_RWLOCK = @as(c_int, 1) << @as(c_int, 24);
pub const FUSE_CAP_RENAME_SWAP = @as(c_int, 1) << @as(c_int, 25);
pub const FUSE_CAP_RENAME_EXCL = @as(c_int, 1) << @as(c_int, 26);
pub const FUSE_CAP_ALLOCATE = @as(c_int, 1) << @as(c_int, 27);
pub const FUSE_CAP_EXCHANGE_DATA = @as(c_int, 1) << @as(c_int, 28);
pub const FUSE_CAP_CASE_INSENSITIVE = @as(c_int, 1) << @as(c_int, 29);
pub const FUSE_CAP_VOL_RENAME = @as(c_int, 1) << @as(c_int, 30);
pub const FUSE_CAP_XTIMES = @as(c_int, 1) << @as(c_int, 31);
pub const FUSE_IOCTL_COMPAT = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_IOCTL_UNRESTRICTED = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_IOCTL_RETRY = @as(c_int, 1) << @as(c_int, 2);
pub const FUSE_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_IOCTL_MAX_IOV = @as(c_int, 256);
pub const FUSE_ENABLE_SETVOLNAME = @compileError("unable to translate C expr: unexpected token '|='");
// /usr/local/include/fuse/fuse_common.h:281:11
pub const FUSE_ENABLE_XTIMES = @compileError("unable to translate C expr: unexpected token '|='");
// /usr/local/include/fuse/fuse_common.h:282:11
pub const FUSE_ENABLE_CASE_INSENSITIVE = @compileError("unable to translate C expr: unexpected token '|='");
// /usr/local/include/fuse/fuse_common.h:283:11
pub const FUSE_BUFVEC_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/local/include/fuse/fuse_common.h:503:9
pub const _SYS_FCNTL_H_ = "";
pub const O_RDONLY = @as(c_int, 0x0000);
pub const O_WRONLY = @as(c_int, 0x0001);
pub const O_RDWR = @as(c_int, 0x0002);
pub const O_ACCMODE = @as(c_int, 0x0003);
pub const FREAD = @as(c_int, 0x00000001);
pub const FWRITE = @as(c_int, 0x00000002);
pub const O_NONBLOCK = @as(c_int, 0x00000004);
pub const O_APPEND = @as(c_int, 0x00000008);
pub const O_SYNC = @as(c_int, 0x0080);
pub const O_SHLOCK = @as(c_int, 0x00000010);
pub const O_EXLOCK = @as(c_int, 0x00000020);
pub const O_ASYNC = @as(c_int, 0x00000040);
pub const O_FSYNC = O_SYNC;
pub const O_NOFOLLOW = @as(c_int, 0x00000100);
pub const O_CREAT = @as(c_int, 0x00000200);
pub const O_TRUNC = @as(c_int, 0x00000400);
pub const O_EXCL = @as(c_int, 0x00000800);
pub const O_EVTONLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const O_NOCTTY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const O_DIRECTORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const O_SYMLINK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const O_DSYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400000, .hex);
pub const O_CLOEXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const O_NOFOLLOW_ANY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const O_EXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const O_SEARCH = O_EXEC | O_DIRECTORY;
pub const AT_FDCWD = -@as(c_int, 2);
pub const AT_EACCESS = @as(c_int, 0x0010);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x0020);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x0040);
pub const AT_REMOVEDIR = @as(c_int, 0x0080);
pub const AT_REALDEV = @as(c_int, 0x0200);
pub const AT_FDONLY = @as(c_int, 0x0400);
pub const AT_SYMLINK_NOFOLLOW_ANY = @as(c_int, 0x0800);
pub const O_DP_GETRAWENCRYPTED = @as(c_int, 0x0001);
pub const O_DP_GETRAWUNENCRYPTED = @as(c_int, 0x0002);
pub const O_DP_AUTHENTICATE = @as(c_int, 0x0004);
pub const AUTH_OPEN_NOAUTHFD = -@as(c_int, 1);
pub const FAPPEND = O_APPEND;
pub const FASYNC = O_ASYNC;
pub const FFSYNC = O_FSYNC;
pub const FFDSYNC = O_DSYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NONBLOCK;
pub const O_NDELAY = O_NONBLOCK;
pub const CPF_OVERWRITE = @as(c_int, 0x0001);
pub const CPF_IGNORE_MODE = @as(c_int, 0x0002);
pub const CPF_MASK = CPF_OVERWRITE | CPF_IGNORE_MODE;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const F_GETOWN = @as(c_int, 5);
pub const F_SETOWN = @as(c_int, 6);
pub const F_GETLK = @as(c_int, 7);
pub const F_SETLK = @as(c_int, 8);
pub const F_SETLKW = @as(c_int, 9);
pub const F_SETLKWTIMEOUT = @as(c_int, 10);
pub const F_FLUSH_DATA = @as(c_int, 40);
pub const F_CHKCLEAN = @as(c_int, 41);
pub const F_PREALLOCATE = @as(c_int, 42);
pub const F_SETSIZE = @as(c_int, 43);
pub const F_RDADVISE = @as(c_int, 44);
pub const F_RDAHEAD = @as(c_int, 45);
pub const F_NOCACHE = @as(c_int, 48);
pub const F_LOG2PHYS = @as(c_int, 49);
pub const F_GETPATH = @as(c_int, 50);
pub const F_FULLFSYNC = @as(c_int, 51);
pub const F_PATHPKG_CHECK = @as(c_int, 52);
pub const F_FREEZE_FS = @as(c_int, 53);
pub const F_THAW_FS = @as(c_int, 54);
pub const F_GLOBAL_NOCACHE = @as(c_int, 55);
pub const F_ADDSIGS = @as(c_int, 59);
pub const F_ADDFILESIGS = @as(c_int, 61);
pub const F_NODIRECT = @as(c_int, 62);
pub const F_GETPROTECTIONCLASS = @as(c_int, 63);
pub const F_SETPROTECTIONCLASS = @as(c_int, 64);
pub const F_LOG2PHYS_EXT = @as(c_int, 65);
pub const F_GETLKPID = @as(c_int, 66);
pub const F_SETBACKINGSTORE = @as(c_int, 70);
pub const F_GETPATH_MTMINFO = @as(c_int, 71);
pub const F_GETCODEDIR = @as(c_int, 72);
pub const F_SETNOSIGPIPE = @as(c_int, 73);
pub const F_GETNOSIGPIPE = @as(c_int, 74);
pub const F_TRANSCODEKEY = @as(c_int, 75);
pub const F_SINGLE_WRITER = @as(c_int, 76);
pub const F_GETPROTECTIONLEVEL = @as(c_int, 77);
pub const F_FINDSIGS = @as(c_int, 78);
pub const F_ADDFILESIGS_FOR_DYLD_SIM = @as(c_int, 83);
pub const F_BARRIERFSYNC = @as(c_int, 85);
pub const F_OFD_SETLK = @as(c_int, 90);
pub const F_OFD_SETLKW = @as(c_int, 91);
pub const F_OFD_GETLK = @as(c_int, 92);
pub const F_OFD_SETLKWTIMEOUT = @as(c_int, 93);
pub const F_ADDFILESIGS_RETURN = @as(c_int, 97);
pub const F_CHECK_LV = @as(c_int, 98);
pub const F_PUNCHHOLE = @as(c_int, 99);
pub const F_TRIM_ACTIVE_FILE = @as(c_int, 100);
pub const F_SPECULATIVE_READ = @as(c_int, 101);
pub const F_GETPATH_NOFIRMLINK = @as(c_int, 102);
pub const F_ADDFILESIGS_INFO = @as(c_int, 103);
pub const F_ADDFILESUPPL = @as(c_int, 104);
pub const F_GETSIGSINFO = @as(c_int, 105);
pub const F_SETLEASE = @as(c_int, 106);
pub const F_GETLEASE = @as(c_int, 107);
pub inline fn F_SETLEASE_ARG(t: anytype, oc: anytype) @TypeOf(t | (oc << @as(c_int, 2))) {
    _ = &t;
    _ = &oc;
    return t | (oc << @as(c_int, 2));
}
pub const F_TRANSFEREXTENTS = @as(c_int, 110);
pub const F_ATTRIBUTION_TAG = @as(c_int, 111);
pub const FCNTL_FS_SPECIFIC_BASE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const F_DUPFD_CLOEXEC = @as(c_int, 67);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const F_RDLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const F_WRLCK = @as(c_int, 3);
pub const _SEEK_SET_H_ = "";
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_HOLE = @as(c_int, 3);
pub const SEEK_DATA = @as(c_int, 4);
pub const F_ALLOCATECONTIG = @as(c_int, 0x00000002);
pub const F_ALLOCATEALL = @as(c_int, 0x00000004);
pub const F_ALLOCATEPERSIST = @as(c_int, 0x00000008);
pub const F_PEOFPOSMODE = @as(c_int, 3);
pub const F_VOLPOSMODE = @as(c_int, 4);
pub const USER_FSIGNATURES_CDHASH_LEN = @as(c_int, 20);
pub const GETSIGSINFO_PLATFORM_BINARY = @as(c_int, 1);
pub const LOCK_SH = @as(c_int, 0x01);
pub const LOCK_EX = @as(c_int, 0x02);
pub const LOCK_NB = @as(c_int, 0x04);
pub const LOCK_UN = @as(c_int, 0x08);
pub const ATTRIBUTION_NAME_MAX = @as(c_int, 255);
pub const F_CREATE_TAG = @as(c_int, 0x00000001);
pub const F_DELETE_TAG = @as(c_int, 0x00000002);
pub const F_QUERY_TAG = @as(c_int, 0x00000004);
pub const O_POPUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const O_ALERT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const FILESEC_GUID = FILESEC_UUID;
pub const _FILESEC_UNSET_PROPERTY = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _FILESEC_REMOVE_ACL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 1));
pub const _TIME_H_ = "";
pub const __TYPES_H_ = "";
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:31:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:33:9
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const NULL = __DARWIN_NULL;
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const __CLOCK_AVAILABILITY = __OSX_AVAILABLE(@as(f64, 10.12)) ++ __IOS_AVAILABLE(@as(f64, 10.0)) ++ __TVOS_AVAILABLE(@as(f64, 10.0)) ++ __WATCHOS_AVAILABLE(@as(f64, 3.0));
pub const CLOCK_REALTIME = _CLOCK_REALTIME;
pub const CLOCK_MONOTONIC = _CLOCK_MONOTONIC;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;
pub const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const TIME_UTC = @as(c_int, 1);
pub const _UTIME_H_ = "";
pub const _SYS_STATVFS_H_ = "";
pub const ST_RDONLY = @as(c_int, 0x00000001);
pub const ST_NOSUID = @as(c_int, 0x00000002);
pub const _SYS_UIO_H_ = "";
pub const _STRUCT_IOVEC = "";
pub const _SYS_MOUNT_H_ = "";
pub const _SYS_ATTR_H_ = "";
pub const _SYS_UCRED_H_ = "";
pub const _SYS_PARAM_H_ = "";
pub const BSD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 199506, .decimal);
pub const BSD4_3 = @as(c_int, 1);
pub const BSD4_4 = @as(c_int, 1);
pub const NeXTBSD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1995064, .decimal);
pub const NeXTBSD4_0 = @as(c_int, 0);
pub const _SYS_SYSLIMITS_H_ = "";
pub const ARG_MAX = @as(c_int, 1024) * @as(c_int, 1024);
pub const CHILD_MAX = @as(c_int, 266);
pub const GID_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 2147483647, .decimal);
pub const LINK_MAX = @as(c_int, 32767);
pub const MAX_CANON = @as(c_int, 1024);
pub const MAX_INPUT = @as(c_int, 1024);
pub const NAME_MAX = @as(c_int, 255);
pub const NGROUPS_MAX = @as(c_int, 16);
pub const UID_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 2147483647, .decimal);
pub const OPEN_MAX = @as(c_int, 10240);
pub const PATH_MAX = @as(c_int, 1024);
pub const PIPE_BUF = @as(c_int, 512);
pub const BC_BASE_MAX = @as(c_int, 99);
pub const BC_DIM_MAX = @as(c_int, 2048);
pub const BC_SCALE_MAX = @as(c_int, 99);
pub const BC_STRING_MAX = @as(c_int, 1000);
pub const CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const EQUIV_CLASS_MAX = @as(c_int, 2);
pub const EXPR_NEST_MAX = @as(c_int, 32);
pub const LINE_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 255);
pub const NZERO = @as(c_int, 20);
pub const MAXCOMLEN = @as(c_int, 16);
pub const MAXINTERP = @as(c_int, 64);
pub const MAXLOGNAME = @as(c_int, 255);
pub const MAXUPRC = CHILD_MAX;
pub const NCARGS = ARG_MAX;
pub const NGROUPS = NGROUPS_MAX;
pub const NOFILE = @as(c_int, 256);
pub const NOGROUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const MAXHOSTNAMELEN = @as(c_int, 256);
pub const MAXDOMNAMELEN = @as(c_int, 256);
pub const _BSD_MACHINE_PARAM_H_ = "";
pub const _ARM_PARAM_H_ = "";
pub const _ARM__PARAM_H_ = "";
pub const __DARWIN_ALIGNBYTES = @import("std").zig.c_translation.sizeof(__darwin_size_t) - @as(c_int, 1);
pub inline fn __DARWIN_ALIGN(p: anytype) @TypeOf(@import("std").zig.c_translation.cast(__darwin_size_t, @import("std").zig.c_translation.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES) & ~__DARWIN_ALIGNBYTES) {
    _ = &p;
    return @import("std").zig.c_translation.cast(__darwin_size_t, @import("std").zig.c_translation.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES) & ~__DARWIN_ALIGNBYTES;
}
pub const __DARWIN_ALIGNBYTES32 = @import("std").zig.c_translation.sizeof(__uint32_t) - @as(c_int, 1);
pub inline fn __DARWIN_ALIGN32(p: anytype) @TypeOf(@import("std").zig.c_translation.cast(__darwin_size_t, @import("std").zig.c_translation.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES32) & ~__DARWIN_ALIGNBYTES32) {
    _ = &p;
    return @import("std").zig.c_translation.cast(__darwin_size_t, @import("std").zig.c_translation.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES32) & ~__DARWIN_ALIGNBYTES32;
}
pub const ALIGNBYTES = __DARWIN_ALIGNBYTES;
pub inline fn ALIGN(p: anytype) @TypeOf(__DARWIN_ALIGN(p)) {
    _ = &p;
    return __DARWIN_ALIGN(p);
}
pub const NBPG = @as(c_int, 4096);
pub const PGOFSET = NBPG - @as(c_int, 1);
pub const PGSHIFT = @as(c_int, 12);
pub const DEV_BSIZE = @as(c_int, 512);
pub const DEV_BSHIFT = @as(c_int, 9);
pub const BLKDEV_IOSIZE = @as(c_int, 2048);
pub const MAXPHYS = @as(c_int, 64) * @as(c_int, 1024);
pub const CLSIZE = @as(c_int, 1);
pub const CLSIZELOG2 = @as(c_int, 0);
pub const MSIZESHIFT = @as(c_int, 8);
pub const MSIZE = @as(c_int, 1) << MSIZESHIFT;
pub const MCLSHIFT = @as(c_int, 11);
pub const MCLBYTES = @as(c_int, 1) << MCLSHIFT;
pub const MBIGCLSHIFT = @as(c_int, 12);
pub const MBIGCLBYTES = @as(c_int, 1) << MBIGCLSHIFT;
pub const M16KCLSHIFT = @as(c_int, 14);
pub const M16KCLBYTES = @as(c_int, 1) << M16KCLSHIFT;
pub const MCLOFSET = MCLBYTES - @as(c_int, 1);
pub const NMBCLUSTERS = @compileError("unable to translate macro: undefined identifier `CONFIG_NMBCLUSTERS`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm/param.h:93:9
pub inline fn ctos(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn stoc(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn ctod(x: anytype) @TypeOf(x << (PGSHIFT - DEV_BSHIFT)) {
    _ = &x;
    return x << (PGSHIFT - DEV_BSHIFT);
}
pub inline fn dtoc(x: anytype) @TypeOf(x >> (PGSHIFT - DEV_BSHIFT)) {
    _ = &x;
    return x >> (PGSHIFT - DEV_BSHIFT);
}
pub inline fn dtob(x: anytype) @TypeOf(x << DEV_BSHIFT) {
    _ = &x;
    return x << DEV_BSHIFT;
}
pub inline fn ctob(x: anytype) @TypeOf(x << PGSHIFT) {
    _ = &x;
    return x << PGSHIFT;
}
pub inline fn btoc(x: anytype) @TypeOf((@import("std").zig.c_translation.cast(c_uint, x) + (NBPG - @as(c_int, 1))) >> PGSHIFT) {
    _ = &x;
    return (@import("std").zig.c_translation.cast(c_uint, x) + (NBPG - @as(c_int, 1))) >> PGSHIFT;
}
pub inline fn btodb(bytes: anytype, devBlockSize: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(c_uint, bytes), devBlockSize)) {
    _ = &bytes;
    _ = &devBlockSize;
    return @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(c_uint, bytes), devBlockSize);
}
pub inline fn dbtob(db: anytype, devBlockSize: anytype) @TypeOf(@import("std").zig.c_translation.cast(c_uint, db) * devBlockSize) {
    _ = &db;
    _ = &devBlockSize;
    return @import("std").zig.c_translation.cast(c_uint, db) * devBlockSize;
}
pub inline fn bdbtofsb(bn: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(bn, @import("std").zig.c_translation.MacroArithmetic.div(BLKDEV_IOSIZE, DEV_BSIZE))) {
    _ = &bn;
    return @import("std").zig.c_translation.MacroArithmetic.div(bn, @import("std").zig.c_translation.MacroArithmetic.div(BLKDEV_IOSIZE, DEV_BSIZE));
}
pub inline fn STATUS_WORD(rpl: anytype, ipl: anytype) @TypeOf((ipl << @as(c_int, 8)) | rpl) {
    _ = &rpl;
    _ = &ipl;
    return (ipl << @as(c_int, 8)) | rpl;
}
pub inline fn USERMODE(x: anytype) @TypeOf((x & @as(c_int, 3)) == @as(c_int, 3)) {
    _ = &x;
    return (x & @as(c_int, 3)) == @as(c_int, 3);
}
pub inline fn BASEPRI(x: anytype) @TypeOf((x & (@as(c_int, 255) << @as(c_int, 8))) == @as(c_int, 0)) {
    _ = &x;
    return (x & (@as(c_int, 255) << @as(c_int, 8))) == @as(c_int, 0);
}
pub const DELAY = @compileError("unable to translate macro: undefined identifier `N`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm/param.h:146:9
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIMITS_H_ = "";
pub const _BSD_MACHINE_LIMITS_H_ = "";
pub const _ARM_LIMITS_H_ = "";
pub const _ARM__LIMITS_H_ = "";
pub const __DARWIN_CLK_TCK = @as(c_int, 100);
pub const MB_LEN_MAX = @as(c_int, 6);
pub const CLK_TCK = __DARWIN_CLK_TCK;
pub const CHAR_BIT = @as(c_int, 8);
pub const SCHAR_MAX = @as(c_int, 127);
pub const SCHAR_MIN = -@as(c_int, 128);
pub const UCHAR_MAX = @as(c_int, 255);
pub const CHAR_MAX = @as(c_int, 127);
pub const CHAR_MIN = -@as(c_int, 128);
pub const USHRT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const SHRT_MAX = @as(c_int, 32767);
pub const SHRT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const UINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hex);
pub const INT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const ULONG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 0xffffffffffffffff, .hex);
pub const LONG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hex);
pub const LONG_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hex) - @as(c_int, 1);
pub const ULLONG_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const LLONG_MAX = @as(c_longlong, 0x7fffffffffffffff);
pub const LLONG_MIN = -@as(c_longlong, 0x7fffffffffffffff) - @as(c_int, 1);
pub const LONG_BIT = @as(c_int, 64);
pub const SSIZE_MAX = LONG_MAX;
pub const WORD_BIT = @as(c_int, 32);
pub const SIZE_T_MAX = ULONG_MAX;
pub const UQUAD_MAX = ULLONG_MAX;
pub const QUAD_MAX = LLONG_MAX;
pub const QUAD_MIN = LLONG_MIN;
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_EQUIV_CLASS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_KEYS_MAX = @as(c_int, 512);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_SS_REPL_MAX = @as(c_int, 4);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_EVENT_NAME_MAX = @as(c_int, 30);
pub const _POSIX_TRACE_NAME_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_SYS_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_USER_EVENT_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX_RE_DUP_MAX = _POSIX2_RE_DUP_MAX;
pub const OFF_MIN = LLONG_MIN;
pub const OFF_MAX = LLONG_MAX;
pub const PASS_MAX = @as(c_int, 128);
pub const NL_ARGMAX = @as(c_int, 9);
pub const NL_LANGMAX = @as(c_int, 14);
pub const NL_MSGMAX = @as(c_int, 32767);
pub const NL_NMAX = @as(c_int, 1);
pub const NL_SETMAX = @as(c_int, 255);
pub const NL_TEXTMAX = @as(c_int, 2048);
pub const _XOPEN_IOV_MAX = @as(c_int, 16);
pub const IOV_MAX = @as(c_int, 1024);
pub const _XOPEN_NAME_MAX = @as(c_int, 255);
pub const _XOPEN_PATH_MAX = @as(c_int, 1024);
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _SYS_SIGNAL_H_ = "";
pub const __DARWIN_NSIG = @as(c_int, 32);
pub const NSIG = __DARWIN_NSIG;
pub const _BSD_MACHINE_SIGNAL_H_ = "";
pub const _ARM_SIGNAL_ = @as(c_int, 1);
pub const SIGHUP = @as(c_int, 1);
pub const SIGINT = @as(c_int, 2);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGILL = @as(c_int, 4);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGABRT = @as(c_int, 6);
pub const SIGIOT = SIGABRT;
pub const SIGEMT = @as(c_int, 7);
pub const SIGFPE = @as(c_int, 8);
pub const SIGKILL = @as(c_int, 9);
pub const SIGBUS = @as(c_int, 10);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGSYS = @as(c_int, 12);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGTERM = @as(c_int, 15);
pub const SIGURG = @as(c_int, 16);
pub const SIGSTOP = @as(c_int, 17);
pub const SIGTSTP = @as(c_int, 18);
pub const SIGCONT = @as(c_int, 19);
pub const SIGCHLD = @as(c_int, 20);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGIO = @as(c_int, 23);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGWINCH = @as(c_int, 28);
pub const SIGINFO = @as(c_int, 29);
pub const SIGUSR1 = @as(c_int, 30);
pub const SIGUSR2 = @as(c_int, 31);
pub const SIG_DFL = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:134:9
pub const _BSD_MACHINE__MCONTEXT_H_ = "";
pub const __ARM_MCONTEXT_H_ = "";
pub const _MACH_MACHINE__STRUCTS_H_ = "";
pub const _MACH_ARM__STRUCTS_H_ = "";
pub const _STRUCT_ARM_EXCEPTION_STATE = struct___darwin_arm_exception_state;
pub const _STRUCT_ARM_EXCEPTION_STATE64 = struct___darwin_arm_exception_state64;
pub const _STRUCT_ARM_THREAD_STATE = struct___darwin_arm_thread_state;
pub const __DARWIN_OPAQUE_ARM_THREAD_STATE64 = @as(c_int, 0);
pub const _STRUCT_ARM_THREAD_STATE64 = struct___darwin_arm_thread_state64;
pub inline fn __darwin_arm_thread_state64_get_pc(ts: anytype) @TypeOf(ts.__pc) {
    _ = &ts;
    return ts.__pc;
}
pub inline fn __darwin_arm_thread_state64_get_pc_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, ts.__pc));
}
pub const __darwin_arm_thread_state64_set_pc_fptr = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:406:9
pub inline fn __darwin_arm_thread_state64_get_lr(ts: anytype) @TypeOf(ts.__lr) {
    _ = &ts;
    return ts.__lr;
}
pub inline fn __darwin_arm_thread_state64_get_lr_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, ts.__lr));
}
pub const __darwin_arm_thread_state64_set_lr_fptr = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:415:9
pub inline fn __darwin_arm_thread_state64_get_sp(ts: anytype) @TypeOf(ts.__sp) {
    _ = &ts;
    return ts.__sp;
}
pub const __darwin_arm_thread_state64_set_sp = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:421:9
pub inline fn __darwin_arm_thread_state64_get_fp(ts: anytype) @TypeOf(ts.__fp) {
    _ = &ts;
    return ts.__fp;
}
pub const __darwin_arm_thread_state64_set_fp = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:427:9
pub const __darwin_arm_thread_state64_ptrauth_strip = @import("std").zig.c_translation.Macros.DISCARD;
pub const _STRUCT_ARM_VFP_STATE = struct___darwin_arm_vfp_state;
pub const _STRUCT_ARM_NEON_STATE64 = struct___darwin_arm_neon_state64;
pub const _STRUCT_ARM_NEON_STATE = struct___darwin_arm_neon_state;
pub const _STRUCT_ARM_PAGEIN_STATE = struct___arm_pagein_state;
pub const _STRUCT_ARM_LEGACY_DEBUG_STATE = struct___arm_legacy_debug_state;
pub const _STRUCT_ARM_DEBUG_STATE32 = struct___darwin_arm_debug_state32;
pub const _STRUCT_ARM_DEBUG_STATE64 = struct___darwin_arm_debug_state64;
pub const _STRUCT_ARM_CPMU_STATE64 = struct___darwin_arm_cpmu_state64;
pub const _STRUCT_MCONTEXT32 = struct___darwin_mcontext32;
pub const _STRUCT_MCONTEXT64 = struct___darwin_mcontext64;
pub const _MCONTEXT_T = "";
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const _STRUCT_SIGALTSTACK = struct___darwin_sigaltstack;
pub const _STRUCT_UCONTEXT = struct___darwin_ucontext;
pub const _SIGSET_T = "";
pub const SIGEV_NONE = @as(c_int, 0);
pub const SIGEV_SIGNAL = @as(c_int, 1);
pub const SIGEV_THREAD = @as(c_int, 3);
pub const ILL_NOOP = @as(c_int, 0);
pub const ILL_ILLOPC = @as(c_int, 1);
pub const ILL_ILLTRP = @as(c_int, 2);
pub const ILL_PRVOPC = @as(c_int, 3);
pub const ILL_ILLOPN = @as(c_int, 4);
pub const ILL_ILLADR = @as(c_int, 5);
pub const ILL_PRVREG = @as(c_int, 6);
pub const ILL_COPROC = @as(c_int, 7);
pub const ILL_BADSTK = @as(c_int, 8);
pub const FPE_NOOP = @as(c_int, 0);
pub const FPE_FLTDIV = @as(c_int, 1);
pub const FPE_FLTOVF = @as(c_int, 2);
pub const FPE_FLTUND = @as(c_int, 3);
pub const FPE_FLTRES = @as(c_int, 4);
pub const FPE_FLTINV = @as(c_int, 5);
pub const FPE_FLTSUB = @as(c_int, 6);
pub const FPE_INTDIV = @as(c_int, 7);
pub const FPE_INTOVF = @as(c_int, 8);
pub const SEGV_NOOP = @as(c_int, 0);
pub const SEGV_MAPERR = @as(c_int, 1);
pub const SEGV_ACCERR = @as(c_int, 2);
pub const BUS_NOOP = @as(c_int, 0);
pub const BUS_ADRALN = @as(c_int, 1);
pub const BUS_ADRERR = @as(c_int, 2);
pub const BUS_OBJERR = @as(c_int, 3);
pub const TRAP_BRKPT = @as(c_int, 1);
pub const TRAP_TRACE = @as(c_int, 2);
pub const CLD_NOOP = @as(c_int, 0);
pub const CLD_EXITED = @as(c_int, 1);
pub const CLD_KILLED = @as(c_int, 2);
pub const CLD_DUMPED = @as(c_int, 3);
pub const CLD_TRAPPED = @as(c_int, 4);
pub const CLD_STOPPED = @as(c_int, 5);
pub const CLD_CONTINUED = @as(c_int, 6);
pub const POLL_IN = @as(c_int, 1);
pub const POLL_OUT = @as(c_int, 2);
pub const POLL_MSG = @as(c_int, 3);
pub const POLL_ERR = @as(c_int, 4);
pub const POLL_PRI = @as(c_int, 5);
pub const POLL_HUP = @as(c_int, 6);
pub const sa_handler = __sigaction_u.__sa_handler;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const SA_ONSTACK = @as(c_int, 0x0001);
pub const SA_RESTART = @as(c_int, 0x0002);
pub const SA_RESETHAND = @as(c_int, 0x0004);
pub const SA_NOCLDSTOP = @as(c_int, 0x0008);
pub const SA_NODEFER = @as(c_int, 0x0010);
pub const SA_NOCLDWAIT = @as(c_int, 0x0020);
pub const SA_SIGINFO = @as(c_int, 0x0040);
pub const SA_USERTRAMP = @as(c_int, 0x0100);
pub const SA_64REGSET = @as(c_int, 0x0200);
pub const SA_USERSPACE_MASK = (((((SA_ONSTACK | SA_RESTART) | SA_RESETHAND) | SA_NOCLDSTOP) | SA_NODEFER) | SA_NOCLDWAIT) | SA_SIGINFO;
pub const SIG_BLOCK = @as(c_int, 1);
pub const SIG_UNBLOCK = @as(c_int, 2);
pub const SIG_SETMASK = @as(c_int, 3);
pub const SI_USER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001, .hex);
pub const SI_QUEUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10002, .hex);
pub const SI_TIMER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10003, .hex);
pub const SI_ASYNCIO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004, .hex);
pub const SI_MESGQ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10005, .hex);
pub const SS_ONSTACK = @as(c_int, 0x0001);
pub const SS_DISABLE = @as(c_int, 0x0004);
pub const MINSIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const SV_ONSTACK = SA_ONSTACK;
pub const SV_INTERRUPT = SA_RESTART;
pub const SV_RESETHAND = SA_RESETHAND;
pub const SV_NODEFER = SA_NODEFER;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const SV_SIGINFO = SA_SIGINFO;
pub const sv_onstack = @compileError("unable to translate macro: undefined identifier `sv_flags`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:361:9
pub inline fn sigmask(m: anytype) @TypeOf(@as(c_int, 1) << (m - @as(c_int, 1))) {
    _ = &m;
    return @as(c_int, 1) << (m - @as(c_int, 1));
}
pub const BADSIG = SIG_ERR;
pub const PSWP = @as(c_int, 0);
pub const PVM = @as(c_int, 4);
pub const PINOD = @as(c_int, 8);
pub const PRIBIO = @as(c_int, 16);
pub const PVFS = @as(c_int, 20);
pub const PZERO = @as(c_int, 22);
pub const PSOCK = @as(c_int, 24);
pub const PWAIT = @as(c_int, 32);
pub const PLOCK = @as(c_int, 36);
pub const PPAUSE = @as(c_int, 40);
pub const PUSER = @as(c_int, 50);
pub const MAXPRI = @as(c_int, 127);
pub const PRIMASK = @as(c_int, 0x0ff);
pub const PCATCH = @as(c_int, 0x100);
pub const PTTYBLOCK = @as(c_int, 0x200);
pub const PDROP = @as(c_int, 0x400);
pub const PSPIN = @as(c_int, 0x800);
pub const NBPW = @import("std").zig.c_translation.sizeof(c_int);
pub const CMASK = @as(c_int, 0o22);
pub const NODEV = @import("std").zig.c_translation.cast(dev_t, -@as(c_int, 1));
pub const CLBYTES = CLSIZE * NBPG;
pub const CLOFSET = (CLSIZE * NBPG) - @as(c_int, 1);
pub inline fn claligned(x: anytype) @TypeOf((@import("std").zig.c_translation.cast(c_int, x) & CLOFSET) == @as(c_int, 0)) {
    _ = &x;
    return (@import("std").zig.c_translation.cast(c_int, x) & CLOFSET) == @as(c_int, 0);
}
pub const CLOFF = CLOFSET;
pub const CLSHIFT = PGSHIFT + CLSIZELOG2;
pub inline fn clbase(i: anytype) @TypeOf(i) {
    _ = &i;
    return i;
}
pub inline fn clrnd(i: anytype) @TypeOf(i) {
    _ = &i;
    return i;
}
pub const CBLOCK = @as(c_int, 64);
pub const CBQSIZE = @import("std").zig.c_translation.MacroArithmetic.div(CBLOCK, NBBY);
pub const CBSIZE = @compileError("unable to translate macro: undefined identifier `cblock`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/param.h:167:9
pub const CROUND = CBLOCK - @as(c_int, 1);
pub const MAXBSIZE = @as(c_int, 256) * @as(c_int, 4096);
pub const MAXPHYSIO = MAXPHYS;
pub const MAXFRAG = @as(c_int, 8);
pub const MAXPHYSIO_WIRED = (@as(c_int, 16) * @as(c_int, 1024)) * @as(c_int, 1024);
pub const MAXPATHLEN = PATH_MAX;
pub const MAXSYMLINKS = @as(c_int, 32);
pub const setbit = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/param.h:200:9
pub const clrbit = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/param.h:201:9
pub inline fn isset(a: anytype, i: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]u8, a)[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_uint, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) {
    _ = &a;
    _ = &i;
    return @import("std").zig.c_translation.cast([*c]u8, a)[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_uint, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY));
}
pub inline fn isclr(a: anytype, i: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]u8, a)[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_uint, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) == @as(c_int, 0)) {
    _ = &a;
    _ = &i;
    return (@import("std").zig.c_translation.cast([*c]u8, a)[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(i, NBBY)))] & (@as(c_uint, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(i, NBBY))) == @as(c_int, 0);
}
pub inline fn roundup(x: anytype, y: anytype) @TypeOf(if (@import("std").zig.c_translation.MacroArithmetic.rem(x, y) == @as(c_int, 0)) x else x + (y - @import("std").zig.c_translation.MacroArithmetic.rem(x, y))) {
    _ = &x;
    _ = &y;
    return if (@import("std").zig.c_translation.MacroArithmetic.rem(x, y) == @as(c_int, 0)) x else x + (y - @import("std").zig.c_translation.MacroArithmetic.rem(x, y));
}
pub inline fn powerof2(x: anytype) @TypeOf(((x - @as(c_int, 1)) & x) == @as(c_int, 0)) {
    _ = &x;
    return ((x - @as(c_int, 1)) & x) == @as(c_int, 0);
}
pub inline fn MIN(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    _ = &a;
    _ = &b;
    return if (a < b) a else b;
}
pub inline fn MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    _ = &a;
    _ = &b;
    return if (a > b) a else b;
}
pub const FSHIFT = @as(c_int, 11);
pub const FSCALE = @as(c_int, 1) << FSHIFT;
pub const _BSM_AUDIT_H = "";
pub const AUDIT_RECORD_MAGIC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828a0f1b, .hex);
pub const MAX_AUDIT_RECORDS = @as(c_int, 20);
pub const MAXAUDITDATA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex) - @as(c_int, 1);
pub const MAX_AUDIT_RECORD_SIZE = MAXAUDITDATA;
pub const MIN_AUDIT_FILE_SIZE = @as(c_int, 512) * @as(c_int, 1024);
pub const AUDIT_HARD_LIMIT_FREE_BLOCKS = @as(c_int, 4);
pub const AUDIT_TRIGGER_MIN = @as(c_int, 1);
pub const AUDIT_TRIGGER_LOW_SPACE = @as(c_int, 1);
pub const AUDIT_TRIGGER_ROTATE_KERNEL = @as(c_int, 2);
pub const AUDIT_TRIGGER_READ_FILE = @as(c_int, 3);
pub const AUDIT_TRIGGER_CLOSE_AND_DIE = @as(c_int, 4);
pub const AUDIT_TRIGGER_NO_SPACE = @as(c_int, 5);
pub const AUDIT_TRIGGER_ROTATE_USER = @as(c_int, 6);
pub const AUDIT_TRIGGER_INITIALIZE = @as(c_int, 7);
pub const AUDIT_TRIGGER_EXPIRE_TRAILS = @as(c_int, 8);
pub const AUDIT_TRIGGER_MAX = @as(c_int, 8);
pub const AUDITDEV_FILENAME = "audit";
pub const AUDIT_TRIGGER_FILE = "/dev/" ++ AUDITDEV_FILENAME;
pub const AU_DEFAUDITID = @import("std").zig.c_translation.cast(uid_t, -@as(c_int, 1));
pub const AU_DEFAUDITSID = @as(c_int, 0);
pub const AU_ASSIGN_ASID = -@as(c_int, 1);
pub const AT_IPC_MSG = @import("std").zig.c_translation.cast(u8, @as(c_int, 1));
pub const AT_IPC_SEM = @import("std").zig.c_translation.cast(u8, @as(c_int, 2));
pub const AT_IPC_SHM = @import("std").zig.c_translation.cast(u8, @as(c_int, 3));
pub const AUC_UNSET = @as(c_int, 0);
pub const AUC_AUDITING = @as(c_int, 1);
pub const AUC_NOAUDIT = @as(c_int, 2);
pub const AUC_DISABLED = -@as(c_int, 1);
pub const A_OLDGETPOLICY = @as(c_int, 2);
pub const A_OLDSETPOLICY = @as(c_int, 3);
pub const A_GETKMASK = @as(c_int, 4);
pub const A_SETKMASK = @as(c_int, 5);
pub const A_OLDGETQCTRL = @as(c_int, 6);
pub const A_OLDSETQCTRL = @as(c_int, 7);
pub const A_GETCWD = @as(c_int, 8);
pub const A_GETCAR = @as(c_int, 9);
pub const A_GETSTAT = @as(c_int, 12);
pub const A_SETSTAT = @as(c_int, 13);
pub const A_SETUMASK = @as(c_int, 14);
pub const A_SETSMASK = @as(c_int, 15);
pub const A_OLDGETCOND = @as(c_int, 20);
pub const A_OLDSETCOND = @as(c_int, 21);
pub const A_GETCLASS = @as(c_int, 22);
pub const A_SETCLASS = @as(c_int, 23);
pub const A_GETPINFO = @as(c_int, 24);
pub const A_SETPMASK = @as(c_int, 25);
pub const A_SETFSIZE = @as(c_int, 26);
pub const A_GETFSIZE = @as(c_int, 27);
pub const A_GETPINFO_ADDR = @as(c_int, 28);
pub const A_GETKAUDIT = @as(c_int, 29);
pub const A_SETKAUDIT = @as(c_int, 30);
pub const A_SENDTRIGGER = @as(c_int, 31);
pub const A_GETSINFO_ADDR = @as(c_int, 32);
pub const A_GETPOLICY = @as(c_int, 33);
pub const A_SETPOLICY = @as(c_int, 34);
pub const A_GETQCTRL = @as(c_int, 35);
pub const A_SETQCTRL = @as(c_int, 36);
pub const A_GETCOND = @as(c_int, 37);
pub const A_SETCOND = @as(c_int, 38);
pub const A_GETSFLAGS = @as(c_int, 39);
pub const A_SETSFLAGS = @as(c_int, 40);
pub const A_GETCTLMODE = @as(c_int, 41);
pub const A_SETCTLMODE = @as(c_int, 42);
pub const A_GETEXPAFTER = @as(c_int, 43);
pub const A_SETEXPAFTER = @as(c_int, 44);
pub const AUDIT_CNT = @as(c_int, 0x0001);
pub const AUDIT_AHLT = @as(c_int, 0x0002);
pub const AUDIT_ARGV = @as(c_int, 0x0004);
pub const AUDIT_ARGE = @as(c_int, 0x0008);
pub const AUDIT_SEQ = @as(c_int, 0x0010);
pub const AUDIT_WINDATA = @as(c_int, 0x0020);
pub const AUDIT_USER = @as(c_int, 0x0040);
pub const AUDIT_GROUP = @as(c_int, 0x0080);
pub const AUDIT_TRAIL = @as(c_int, 0x0100);
pub const AUDIT_PATH = @as(c_int, 0x0200);
pub const AUDIT_SCNT = @as(c_int, 0x0400);
pub const AUDIT_PUBLIC = @as(c_int, 0x0800);
pub const AUDIT_ZONENAME = @as(c_int, 0x1000);
pub const AUDIT_PERZONE = @as(c_int, 0x2000);
pub const AQ_HIWATER = @as(c_int, 100);
pub const AQ_MAXHIGH = @as(c_int, 10000);
pub const AQ_LOWATER = @as(c_int, 10);
pub const AQ_BUFSZ = MAXAUDITDATA;
pub const AQ_MAXBUFSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1048576, .decimal);
pub const AU_FS_MINFREE = @as(c_int, 20);
pub const AU_IPv4 = @as(c_int, 4);
pub const AU_IPv6 = @as(c_int, 16);
pub const AU_CLASS_MASK_RESERVED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const AUDIT_CTLMODE_NORMAL = @import("std").zig.c_translation.cast(u8, @as(c_int, 1));
pub const AUDIT_CTLMODE_EXTERNAL = @import("std").zig.c_translation.cast(u8, @as(c_int, 2));
pub const AUDIT_EXPIRE_OP_AND = @import("std").zig.c_translation.cast(u8, @as(c_int, 0));
pub const AUDIT_EXPIRE_OP_OR = @import("std").zig.c_translation.cast(u8, @as(c_int, 1));
pub const __AUDIT_API_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/bsm/audit.h:362:9
pub const _MACH_PORT_H_ = "";
pub const _MACH_BOOLEAN_H_ = "";
pub const _MACH_MACHINE_BOOLEAN_H_ = "";
pub const _MACH_ARM_BOOLEAN_H_ = "";
pub const TRUE = @as(c_int, 1);
pub const FALSE = @as(c_int, 0);
pub const _MACH_MACHINE_VM_TYPES_H_ = "";
pub const _MACH_ARM_VM_TYPES_H_ = "";
pub const MACH_MSG_TYPE_INTEGER_T = @compileError("unable to translate macro: undefined identifier `MACH_MSG_TYPE_INTEGER_32`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/vm_types.h:158:9
pub const _MACH_PORT_T = "";
pub const MACH_PORT_NULL = @as(c_int, 0);
pub const MACH_PORT_DEAD = @import("std").zig.c_translation.cast(mach_port_name_t, ~@as(c_int, 0));
pub inline fn MACH_PORT_VALID(name: anytype) @TypeOf((name != MACH_PORT_NULL) and (name != MACH_PORT_DEAD)) {
    _ = &name;
    return (name != MACH_PORT_NULL) and (name != MACH_PORT_DEAD);
}
pub inline fn MACH_PORT_INDEX(name: anytype) @TypeOf(name >> @as(c_int, 8)) {
    _ = &name;
    return name >> @as(c_int, 8);
}
pub inline fn MACH_PORT_GEN(name: anytype) @TypeOf((name & @as(c_int, 0xff)) << @as(c_int, 24)) {
    _ = &name;
    return (name & @as(c_int, 0xff)) << @as(c_int, 24);
}
pub inline fn MACH_PORT_MAKE(index: anytype, gen: anytype) @TypeOf((index << @as(c_int, 8)) | (gen >> @as(c_int, 24))) {
    _ = &index;
    _ = &gen;
    return (index << @as(c_int, 8)) | (gen >> @as(c_int, 24));
}
pub const MACH_PORT_RIGHT_SEND = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 0));
pub const MACH_PORT_RIGHT_RECEIVE = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 1));
pub const MACH_PORT_RIGHT_SEND_ONCE = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 2));
pub const MACH_PORT_RIGHT_PORT_SET = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 3));
pub const MACH_PORT_RIGHT_DEAD_NAME = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 4));
pub const MACH_PORT_RIGHT_LABELH = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 5));
pub const MACH_PORT_RIGHT_NUMBER = @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 6));
pub inline fn MACH_PORT_TYPE(right: anytype) mach_port_type_t {
    _ = &right;
    return @import("std").zig.c_translation.cast(mach_port_type_t, @import("std").zig.c_translation.cast(mach_port_type_t, @as(c_int, 1)) << (right + @import("std").zig.c_translation.cast(mach_port_right_t, @as(c_int, 16))));
}
pub const MACH_PORT_TYPE_NONE = @import("std").zig.c_translation.cast(mach_port_type_t, @as(c_long, 0));
pub const MACH_PORT_TYPE_SEND = MACH_PORT_TYPE(MACH_PORT_RIGHT_SEND);
pub const MACH_PORT_TYPE_RECEIVE = MACH_PORT_TYPE(MACH_PORT_RIGHT_RECEIVE);
pub const MACH_PORT_TYPE_SEND_ONCE = MACH_PORT_TYPE(MACH_PORT_RIGHT_SEND_ONCE);
pub const MACH_PORT_TYPE_PORT_SET = MACH_PORT_TYPE(MACH_PORT_RIGHT_PORT_SET);
pub const MACH_PORT_TYPE_DEAD_NAME = MACH_PORT_TYPE(MACH_PORT_RIGHT_DEAD_NAME);
pub const MACH_PORT_TYPE_LABELH = MACH_PORT_TYPE(MACH_PORT_RIGHT_LABELH);
pub const MACH_PORT_TYPE_SEND_RECEIVE = MACH_PORT_TYPE_SEND | MACH_PORT_TYPE_RECEIVE;
pub const MACH_PORT_TYPE_SEND_RIGHTS = MACH_PORT_TYPE_SEND | MACH_PORT_TYPE_SEND_ONCE;
pub const MACH_PORT_TYPE_PORT_RIGHTS = MACH_PORT_TYPE_SEND_RIGHTS | MACH_PORT_TYPE_RECEIVE;
pub const MACH_PORT_TYPE_PORT_OR_DEAD = MACH_PORT_TYPE_PORT_RIGHTS | MACH_PORT_TYPE_DEAD_NAME;
pub const MACH_PORT_TYPE_ALL_RIGHTS = MACH_PORT_TYPE_PORT_OR_DEAD | MACH_PORT_TYPE_PORT_SET;
pub const MACH_PORT_TYPE_DNREQUEST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const MACH_PORT_TYPE_SPREQUEST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const MACH_PORT_TYPE_SPREQUEST_DELAYED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const MACH_PORT_SRIGHTS_NONE = @as(c_int, 0);
pub const MACH_PORT_SRIGHTS_PRESENT = @as(c_int, 1);
pub const MACH_PORT_QLIMIT_ZERO = @as(c_int, 0);
pub const MACH_PORT_QLIMIT_BASIC = @as(c_int, 5);
pub const MACH_PORT_QLIMIT_SMALL = @as(c_int, 16);
pub const MACH_PORT_QLIMIT_LARGE = @as(c_int, 1024);
pub const MACH_PORT_QLIMIT_KERNEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65534, .decimal);
pub const MACH_PORT_QLIMIT_MIN = MACH_PORT_QLIMIT_ZERO;
pub const MACH_PORT_QLIMIT_DEFAULT = MACH_PORT_QLIMIT_BASIC;
pub const MACH_PORT_QLIMIT_MAX = MACH_PORT_QLIMIT_LARGE;
pub const MACH_PORT_STATUS_FLAG_TEMPOWNER = @as(c_int, 0x01);
pub const MACH_PORT_STATUS_FLAG_GUARDED = @as(c_int, 0x02);
pub const MACH_PORT_STATUS_FLAG_STRICT_GUARD = @as(c_int, 0x04);
pub const MACH_PORT_STATUS_FLAG_IMP_DONATION = @as(c_int, 0x08);
pub const MACH_PORT_STATUS_FLAG_REVIVE = @as(c_int, 0x10);
pub const MACH_PORT_STATUS_FLAG_TASKPTR = @as(c_int, 0x20);
pub const MACH_PORT_STATUS_FLAG_GUARD_IMMOVABLE_RECEIVE = @as(c_int, 0x40);
pub const MACH_PORT_STATUS_FLAG_NO_GRANT = @as(c_int, 0x80);
pub const MACH_PORT_LIMITS_INFO = @as(c_int, 1);
pub const MACH_PORT_RECEIVE_STATUS = @as(c_int, 2);
pub const MACH_PORT_DNREQUESTS_SIZE = @as(c_int, 3);
pub const MACH_PORT_TEMPOWNER = @as(c_int, 4);
pub const MACH_PORT_IMPORTANCE_RECEIVER = @as(c_int, 5);
pub const MACH_PORT_DENAP_RECEIVER = @as(c_int, 6);
pub const MACH_PORT_INFO_EXT = @as(c_int, 7);
pub const MACH_PORT_GUARD_INFO = @as(c_int, 8);
pub const MACH_PORT_SERVICE_THROTTLED = @as(c_int, 9);
pub const MACH_PORT_LIMITS_INFO_COUNT = @import("std").zig.c_translation.cast(natural_t, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(mach_port_limits_t), @import("std").zig.c_translation.sizeof(natural_t)));
pub const MACH_PORT_RECEIVE_STATUS_COUNT = @import("std").zig.c_translation.cast(natural_t, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(mach_port_status_t), @import("std").zig.c_translation.sizeof(natural_t)));
pub const MACH_PORT_DNREQUESTS_SIZE_COUNT = @as(c_int, 1);
pub const MACH_PORT_INFO_EXT_COUNT = @import("std").zig.c_translation.cast(natural_t, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(mach_port_info_ext_t), @import("std").zig.c_translation.sizeof(natural_t)));
pub const MACH_PORT_GUARD_INFO_COUNT = @import("std").zig.c_translation.cast(natural_t, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(mach_port_guard_info_t), @import("std").zig.c_translation.sizeof(natural_t)));
pub const MACH_PORT_SERVICE_THROTTLED_COUNT = @as(c_int, 1);
pub const MACH_SERVICE_PORT_INFO_STRING_NAME_MAX_BUF_LEN = @as(c_int, 255);
pub const MACH_SERVICE_PORT_INFO_COUNT = @import("std").zig.c_translation.cast(u8, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(mach_service_port_info_data_t), @import("std").zig.c_translation.sizeof(u8)));
pub const MPO_CONTEXT_AS_GUARD = @as(c_int, 0x01);
pub const MPO_QLIMIT = @as(c_int, 0x02);
pub const MPO_TEMPOWNER = @as(c_int, 0x04);
pub const MPO_IMPORTANCE_RECEIVER = @as(c_int, 0x08);
pub const MPO_INSERT_SEND_RIGHT = @as(c_int, 0x10);
pub const MPO_STRICT = @as(c_int, 0x20);
pub const MPO_DENAP_RECEIVER = @as(c_int, 0x40);
pub const MPO_IMMOVABLE_RECEIVE = @as(c_int, 0x80);
pub const MPO_FILTER_MSG = @as(c_int, 0x100);
pub const MPO_TG_BLOCK_TRACKING = @as(c_int, 0x200);
pub const MPO_SERVICE_PORT = @as(c_int, 0x400);
pub const MPO_CONNECTION_PORT = @as(c_int, 0x800);
pub const MPO_REPLY_PORT = @as(c_int, 0x1000);
pub const MPO_ENFORCE_REPLY_PORT_SEMANTICS = @as(c_int, 0x2000);
pub const MPO_PROVISIONAL_REPLY_PORT = @as(c_int, 0x4000);
pub const MPO_PROVISIONAL_ID_PROT_OPTOUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const GUARD_TYPE_MACH_PORT = @as(c_int, 0x1);
pub const MAX_FATAL_kGUARD_EXC_CODE = @as(c_uint, 1) << @as(c_int, 7);
pub const MPG_FLAGS_NONE = @as(c_ulonglong, 0x00);
pub const MAX_OPTIONAL_kGUARD_EXC_CODE = @as(c_uint, 1) << @as(c_int, 19);
pub const MPG_FLAGS_STRICT_REPLY_INVALID_REPLY_DISP = @as(c_ulonglong, 0x01) << @as(c_int, 56);
pub const MPG_FLAGS_STRICT_REPLY_INVALID_REPLY_PORT = @as(c_ulonglong, 0x02) << @as(c_int, 56);
pub const MPG_FLAGS_STRICT_REPLY_INVALID_VOUCHER = @as(c_ulonglong, 0x04) << @as(c_int, 56);
pub const MPG_FLAGS_STRICT_REPLY_NO_BANK_ATTR = @as(c_ulonglong, 0x08) << @as(c_int, 56);
pub const MPG_FLAGS_STRICT_REPLY_MISMATCHED_PERSONA = @as(c_ulonglong, 0x10) << @as(c_int, 56);
pub const MPG_FLAGS_STRICT_REPLY_MASK = @as(c_ulonglong, 0xff) << @as(c_int, 56);
pub const MPG_FLAGS_MOD_REFS_PINNED_DEALLOC = @as(c_ulonglong, 0x01) << @as(c_int, 56);
pub const MPG_FLAGS_MOD_REFS_PINNED_DESTROY = @as(c_ulonglong, 0x02) << @as(c_int, 56);
pub const MPG_FLAGS_MOD_REFS_PINNED_COPYIN = @as(c_ulonglong, 0x04) << @as(c_int, 56);
pub const MPG_FLAGS_IMMOVABLE_PINNED = @as(c_ulonglong, 0x01) << @as(c_int, 56);
pub const MPG_STRICT = @as(c_int, 0x01);
pub const MPG_IMMOVABLE_RECEIVE = @as(c_int, 0x02);
pub const _KAUTH_CRED_T = "";
pub const CRF_NOMEMBERD = @as(c_int, 0x00000001);
pub const CRF_MAC_ENFORCE = @as(c_int, 0x00000002);
pub const XUCRED_VERSION = @as(c_int, 0);
pub const cr_gid = @compileError("unable to translate macro: undefined identifier `cr_groups`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ucred.h:108:9
pub const NOCRED = @import("std").zig.c_translation.cast(kauth_cred_t, @as(c_int, 0));
pub const FSCRED = @import("std").zig.c_translation.cast(kauth_cred_t, -@as(c_int, 1));
pub inline fn IS_VALID_CRED(_cr: anytype) @TypeOf((_cr != NOCRED) and (_cr != FSCRED)) {
    _ = &_cr;
    return (_cr != NOCRED) and (_cr != FSCRED);
}
pub const _SYS_TIME_H_ = "";
pub const _STRUCT_TIMEVAL = struct_timeval;
pub const _STRUCT_TIMEVAL64 = "";
pub const ITIMER_REAL = @as(c_int, 0);
pub const ITIMER_VIRTUAL = @as(c_int, 1);
pub const ITIMER_PROF = @as(c_int, 2);
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:121:9
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:125:9
pub const DST_NONE = @as(c_int, 0);
pub const DST_USA = @as(c_int, 1);
pub const DST_AUST = @as(c_int, 2);
pub const DST_WET = @as(c_int, 3);
pub const DST_MET = @as(c_int, 4);
pub const DST_EET = @as(c_int, 5);
pub const DST_CAN = @as(c_int, 6);
pub const timerclear = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:143:9
pub inline fn timerisset(tvp: anytype) @TypeOf((tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0)) {
    _ = &tvp;
    return (tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0);
}
pub inline fn timercmp(tvp: anytype, uvp: anytype, cmp: anytype) @TypeOf(if (tvp.*.tv_sec == uvp.*.tv_sec) tvp.*.tv_usec ++ cmp(uvp).*.tv_usec else tvp.*.tv_sec ++ cmp(uvp).*.tv_sec) {
    _ = &tvp;
    _ = &uvp;
    _ = &cmp;
    return if (tvp.*.tv_sec == uvp.*.tv_sec) tvp.*.tv_usec ++ cmp(uvp).*.tv_usec else tvp.*.tv_sec ++ cmp(uvp).*.tv_sec;
}
pub const timeradd = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:149:9
pub const timersub = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:158:9
pub inline fn timevalcmp(l: anytype, r: anytype, cmp: anytype) @TypeOf(timercmp(l, r, cmp)) {
    _ = &l;
    _ = &r;
    _ = &cmp;
    return timercmp(l, r, cmp);
}
pub const _SYS__SELECT_H_ = "";
pub const FSOPT_NOFOLLOW = @as(c_int, 0x00000001);
pub const FSOPT_NOINMEMUPDATE = @as(c_int, 0x00000002);
pub const FSOPT_REPORT_FULLSIZE = @as(c_int, 0x00000004);
pub const FSOPT_PACK_INVAL_ATTRS = @as(c_int, 0x00000008);
pub const FSOPT_ATTR_CMN_EXTENDED = @as(c_int, 0x00000020);
pub const FSOPT_RETURN_REALDEV = @as(c_int, 0x00000200);
pub const FSOPT_NOFOLLOW_ANY = @as(c_int, 0x00000800);
pub const SEARCHFS_MAX_SEARCHPARMS = @as(c_int, 4096);
pub const _FSOBJ_ID_T = "";
pub const ATTR_BIT_MAP_COUNT = @as(c_int, 5);
pub const ATTRIBUTE_SET_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/attr.h:98:9
pub const VOL_CAPABILITIES_FORMAT = @as(c_int, 0);
pub const VOL_CAPABILITIES_INTERFACES = @as(c_int, 1);
pub const VOL_CAPABILITIES_RESERVED1 = @as(c_int, 2);
pub const VOL_CAPABILITIES_RESERVED2 = @as(c_int, 3);
pub const ATTR_MAX_BUFFER = @as(c_int, 8192);
pub const VOL_CAP_FMT_PERSISTENTOBJECTIDS = @as(c_int, 0x00000001);
pub const VOL_CAP_FMT_SYMBOLICLINKS = @as(c_int, 0x00000002);
pub const VOL_CAP_FMT_HARDLINKS = @as(c_int, 0x00000004);
pub const VOL_CAP_FMT_JOURNAL = @as(c_int, 0x00000008);
pub const VOL_CAP_FMT_JOURNAL_ACTIVE = @as(c_int, 0x00000010);
pub const VOL_CAP_FMT_NO_ROOT_TIMES = @as(c_int, 0x00000020);
pub const VOL_CAP_FMT_SPARSE_FILES = @as(c_int, 0x00000040);
pub const VOL_CAP_FMT_ZERO_RUNS = @as(c_int, 0x00000080);
pub const VOL_CAP_FMT_CASE_SENSITIVE = @as(c_int, 0x00000100);
pub const VOL_CAP_FMT_CASE_PRESERVING = @as(c_int, 0x00000200);
pub const VOL_CAP_FMT_FAST_STATFS = @as(c_int, 0x00000400);
pub const VOL_CAP_FMT_2TB_FILESIZE = @as(c_int, 0x00000800);
pub const VOL_CAP_FMT_OPENDENYMODES = @as(c_int, 0x00001000);
pub const VOL_CAP_FMT_HIDDEN_FILES = @as(c_int, 0x00002000);
pub const VOL_CAP_FMT_PATH_FROM_ID = @as(c_int, 0x00004000);
pub const VOL_CAP_FMT_NO_VOLUME_SIZES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const VOL_CAP_FMT_DECMPFS_COMPRESSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const VOL_CAP_FMT_64BIT_OBJECT_IDS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const VOL_CAP_FMT_DIR_HARDLINKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const VOL_CAP_FMT_DOCUMENT_ID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const VOL_CAP_FMT_WRITE_GENERATION_COUNT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const VOL_CAP_FMT_NO_IMMUTABLE_FILES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const VOL_CAP_FMT_NO_PERMISSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hex);
pub const VOL_CAP_FMT_SHARED_SPACE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const VOL_CAP_FMT_VOL_GROUPS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const VOL_CAP_FMT_SEALED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex);
pub const VOL_CAP_FMT_CLONE_MAPPING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000000, .hex);
pub const VOL_CAP_INT_SEARCHFS = @as(c_int, 0x00000001);
pub const VOL_CAP_INT_ATTRLIST = @as(c_int, 0x00000002);
pub const VOL_CAP_INT_NFSEXPORT = @as(c_int, 0x00000004);
pub const VOL_CAP_INT_READDIRATTR = @as(c_int, 0x00000008);
pub const VOL_CAP_INT_EXCHANGEDATA = @as(c_int, 0x00000010);
pub const VOL_CAP_INT_COPYFILE = @as(c_int, 0x00000020);
pub const VOL_CAP_INT_ALLOCATE = @as(c_int, 0x00000040);
pub const VOL_CAP_INT_VOL_RENAME = @as(c_int, 0x00000080);
pub const VOL_CAP_INT_ADVLOCK = @as(c_int, 0x00000100);
pub const VOL_CAP_INT_FLOCK = @as(c_int, 0x00000200);
pub const VOL_CAP_INT_EXTENDED_SECURITY = @as(c_int, 0x00000400);
pub const VOL_CAP_INT_USERACCESS = @as(c_int, 0x00000800);
pub const VOL_CAP_INT_MANLOCK = @as(c_int, 0x00001000);
pub const VOL_CAP_INT_NAMEDSTREAMS = @as(c_int, 0x00002000);
pub const VOL_CAP_INT_EXTENDED_ATTR = @as(c_int, 0x00004000);
pub const VOL_CAP_INT_CLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const VOL_CAP_INT_SNAPSHOT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const VOL_CAP_INT_RENAME_SWAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const VOL_CAP_INT_RENAME_EXCL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const VOL_CAP_INT_RENAME_OPENFAIL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const VOL_CAP_INT_RENAME_SECLUDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const VOL_CAP_INT_ATTRIBUTION_TAG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hex);
pub const ATTR_CMN_NAME = @as(c_int, 0x00000001);
pub const ATTR_CMN_DEVID = @as(c_int, 0x00000002);
pub const ATTR_CMN_FSID = @as(c_int, 0x00000004);
pub const ATTR_CMN_OBJTYPE = @as(c_int, 0x00000008);
pub const ATTR_CMN_OBJTAG = @as(c_int, 0x00000010);
pub const ATTR_CMN_OBJID = @as(c_int, 0x00000020);
pub const ATTR_CMN_OBJPERMANENTID = @as(c_int, 0x00000040);
pub const ATTR_CMN_PAROBJID = @as(c_int, 0x00000080);
pub const ATTR_CMN_SCRIPT = @as(c_int, 0x00000100);
pub const ATTR_CMN_CRTIME = @as(c_int, 0x00000200);
pub const ATTR_CMN_MODTIME = @as(c_int, 0x00000400);
pub const ATTR_CMN_CHGTIME = @as(c_int, 0x00000800);
pub const ATTR_CMN_ACCTIME = @as(c_int, 0x00001000);
pub const ATTR_CMN_BKUPTIME = @as(c_int, 0x00002000);
pub const ATTR_CMN_FNDRINFO = @as(c_int, 0x00004000);
pub const ATTR_CMN_OWNERID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const ATTR_CMN_GRPID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const ATTR_CMN_ACCESSMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const ATTR_CMN_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const ATTR_CMN_GEN_COUNT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const ATTR_CMN_DOCUMENT_ID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const ATTR_CMN_USERACCESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const ATTR_CMN_EXTENDED_SECURITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hex);
pub const ATTR_CMN_UUID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const ATTR_CMN_GRPUUID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const ATTR_CMN_FILEID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex);
pub const ATTR_CMN_PARENTID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000000, .hex);
pub const ATTR_CMN_FULLPATH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex);
pub const ATTR_CMN_ADDEDTIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const ATTR_CMN_ERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const ATTR_CMN_DATA_PROTECT_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const ATTR_CMN_RETURNED_ATTRS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const ATTR_CMN_VALIDMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const ATTR_CMN_SETMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x51C7FF00, .hex);
pub const ATTR_CMN_VOLSETMASK = @as(c_int, 0x00006700);
pub const ATTR_VOL_FSTYPE = @as(c_int, 0x00000001);
pub const ATTR_VOL_SIGNATURE = @as(c_int, 0x00000002);
pub const ATTR_VOL_SIZE = @as(c_int, 0x00000004);
pub const ATTR_VOL_SPACEFREE = @as(c_int, 0x00000008);
pub const ATTR_VOL_SPACEAVAIL = @as(c_int, 0x00000010);
pub const ATTR_VOL_MINALLOCATION = @as(c_int, 0x00000020);
pub const ATTR_VOL_ALLOCATIONCLUMP = @as(c_int, 0x00000040);
pub const ATTR_VOL_IOBLOCKSIZE = @as(c_int, 0x00000080);
pub const ATTR_VOL_OBJCOUNT = @as(c_int, 0x00000100);
pub const ATTR_VOL_FILECOUNT = @as(c_int, 0x00000200);
pub const ATTR_VOL_DIRCOUNT = @as(c_int, 0x00000400);
pub const ATTR_VOL_MAXOBJCOUNT = @as(c_int, 0x00000800);
pub const ATTR_VOL_MOUNTPOINT = @as(c_int, 0x00001000);
pub const ATTR_VOL_NAME = @as(c_int, 0x00002000);
pub const ATTR_VOL_MOUNTFLAGS = @as(c_int, 0x00004000);
pub const ATTR_VOL_MOUNTEDDEVICE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const ATTR_VOL_ENCODINGSUSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const ATTR_VOL_CAPABILITIES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const ATTR_VOL_UUID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const ATTR_VOL_FSTYPENAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const ATTR_VOL_FSSUBTYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const ATTR_VOL_SPACEUSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const ATTR_VOL_QUOTA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const ATTR_VOL_RESERVED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const ATTR_VOL_ATTRIBUTES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const ATTR_VOL_INFO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const ATTR_VOL_VALIDMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xF0B7FFFF, .hex);
pub const ATTR_VOL_SETMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80002000, .hex);
pub const ATTR_DIR_LINKCOUNT = @as(c_int, 0x00000001);
pub const ATTR_DIR_ENTRYCOUNT = @as(c_int, 0x00000002);
pub const ATTR_DIR_MOUNTSTATUS = @as(c_int, 0x00000004);
pub const ATTR_DIR_ALLOCSIZE = @as(c_int, 0x00000008);
pub const ATTR_DIR_IOBLOCKSIZE = @as(c_int, 0x00000010);
pub const ATTR_DIR_DATALENGTH = @as(c_int, 0x00000020);
pub const DIR_MNTSTATUS_MNTPOINT = @as(c_int, 0x00000001);
pub const DIR_MNTSTATUS_TRIGGER = @as(c_int, 0x00000002);
pub const ATTR_DIR_VALIDMASK = @as(c_int, 0x0000003f);
pub const ATTR_DIR_SETMASK = @as(c_int, 0x00000000);
pub const ATTR_FILE_LINKCOUNT = @as(c_int, 0x00000001);
pub const ATTR_FILE_TOTALSIZE = @as(c_int, 0x00000002);
pub const ATTR_FILE_ALLOCSIZE = @as(c_int, 0x00000004);
pub const ATTR_FILE_IOBLOCKSIZE = @as(c_int, 0x00000008);
pub const ATTR_FILE_DEVTYPE = @as(c_int, 0x00000020);
pub const ATTR_FILE_FORKCOUNT = @as(c_int, 0x00000080);
pub const ATTR_FILE_FORKLIST = @as(c_int, 0x00000100);
pub const ATTR_FILE_DATALENGTH = @as(c_int, 0x00000200);
pub const ATTR_FILE_DATAALLOCSIZE = @as(c_int, 0x00000400);
pub const ATTR_FILE_RSRCLENGTH = @as(c_int, 0x00001000);
pub const ATTR_FILE_RSRCALLOCSIZE = @as(c_int, 0x00002000);
pub const ATTR_FILE_VALIDMASK = @as(c_int, 0x000037FF);
pub const ATTR_FILE_SETMASK = @as(c_int, 0x00000020);
pub const ATTR_CMNEXT_RELPATH = @as(c_int, 0x00000004);
pub const ATTR_CMNEXT_PRIVATESIZE = @as(c_int, 0x00000008);
pub const ATTR_CMNEXT_LINKID = @as(c_int, 0x00000010);
pub const ATTR_CMNEXT_NOFIRMLINKPATH = @as(c_int, 0x00000020);
pub const ATTR_CMNEXT_REALDEVID = @as(c_int, 0x00000040);
pub const ATTR_CMNEXT_REALFSID = @as(c_int, 0x00000080);
pub const ATTR_CMNEXT_CLONEID = @as(c_int, 0x00000100);
pub const ATTR_CMNEXT_EXT_FLAGS = @as(c_int, 0x00000200);
pub const ATTR_CMNEXT_RECURSIVE_GENCOUNT = @as(c_int, 0x00000400);
pub const ATTR_CMNEXT_ATTRIBUTION_TAG = @as(c_int, 0x00000800);
pub const ATTR_CMNEXT_CLONE_REFCNT = @as(c_int, 0x00001000);
pub const ATTR_CMNEXT_VALIDMASK = @as(c_int, 0x00001ffc);
pub const ATTR_CMNEXT_SETMASK = @as(c_int, 0x00000000);
pub const ATTR_FORK_TOTALSIZE = @as(c_int, 0x00000001);
pub const ATTR_FORK_ALLOCSIZE = @as(c_int, 0x00000002);
pub const ATTR_FORK_RESERVED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hex);
pub const ATTR_FORK_VALIDMASK = @as(c_int, 0x00000003);
pub const ATTR_FORK_SETMASK = @as(c_int, 0x00000000);
pub const ATTR_CMN_NAMEDATTRCOUNT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const ATTR_CMN_NAMEDATTRLIST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const ATTR_FILE_CLUMPSIZE = @as(c_int, 0x00000010);
pub const ATTR_FILE_FILETYPE = @as(c_int, 0x00000040);
pub const ATTR_FILE_DATAEXTENTS = @as(c_int, 0x00000800);
pub const ATTR_FILE_RSRCEXTENTS = @as(c_int, 0x00004000);
pub const ATTR_BULK_REQUIRED = ATTR_CMN_NAME | ATTR_CMN_RETURNED_ATTRS;
pub const SRCHFS_START = @as(c_int, 0x00000001);
pub const SRCHFS_MATCHPARTIALNAMES = @as(c_int, 0x00000002);
pub const SRCHFS_MATCHDIRS = @as(c_int, 0x00000004);
pub const SRCHFS_MATCHFILES = @as(c_int, 0x00000008);
pub const SRCHFS_SKIPLINKS = @as(c_int, 0x00000010);
pub const SRCHFS_SKIPINVISIBLE = @as(c_int, 0x00000020);
pub const SRCHFS_SKIPPACKAGES = @as(c_int, 0x00000040);
pub const SRCHFS_SKIPINAPPROPRIATE = @as(c_int, 0x00000080);
pub const SRCHFS_NEGATEPARAMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const SRCHFS_VALIDOPTIONSMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x800000FF, .hex);
pub const FST_EOF = -@as(c_int, 1);
pub const __OS_BASE__ = "";
pub const OS_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:45:9
pub const OS_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:46:9
pub const OS_NONNULL1 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:47:9
pub const OS_NONNULL2 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:48:9
pub const OS_NONNULL3 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:49:9
pub const OS_NONNULL4 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:50:9
pub const OS_NONNULL5 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:51:9
pub const OS_NONNULL6 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:52:9
pub const OS_NONNULL7 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:53:9
pub const OS_NONNULL8 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:54:9
pub const OS_NONNULL9 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:55:9
pub const OS_NONNULL10 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:56:9
pub const OS_NONNULL11 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:57:9
pub const OS_NONNULL12 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:58:9
pub const OS_NONNULL13 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:59:9
pub const OS_NONNULL14 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:60:9
pub const OS_NONNULL15 = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:61:9
pub const OS_NONNULL_ALL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:62:9
pub const OS_SENTINEL = @compileError("unable to translate macro: undefined identifier `__sentinel__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:63:9
pub const OS_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:64:9
pub const OS_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:65:9
pub const OS_WARN_RESULT = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:66:9
pub const OS_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:67:9
pub const OS_USED = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:68:9
pub const OS_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:69:9
pub const OS_COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:70:9
pub const OS_WEAK = @compileError("unable to translate macro: undefined identifier `__weak__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:71:9
pub const OS_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `__weak_import__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:72:9
pub const OS_NOINLINE = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:73:9
pub const OS_ALWAYS_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:74:9
pub const OS_TRANSPARENT_UNION = @compileError("unable to translate macro: undefined identifier `__transparent_union__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:75:9
pub const OS_ALIGNED = @compileError("unable to translate macro: undefined identifier `__aligned__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:76:9
pub const OS_FORMAT_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:77:9
pub const OS_EXPORT = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:78:9
pub const OS_INLINE = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:79:9
pub inline fn OS_EXPECT(x: anytype, v: anytype) @TypeOf(__builtin_expect(x, v)) {
    _ = &x;
    _ = &v;
    return __builtin_expect(x, v);
}
pub const OS_NOESCAPE = @compileError("unable to translate macro: undefined identifier `__noescape__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:121:9
pub const OS_FALLTHROUGH = @compileError("unable to translate macro: undefined identifier `__fallthrough__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:129:9
pub const OS_ASSUME_NONNULL_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:135:9
pub const OS_ASSUME_NONNULL_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:136:9
pub inline fn OS_COMPILER_CAN_ASSUME(expr: anytype) @TypeOf(__builtin_assume(expr)) {
    _ = &expr;
    return __builtin_assume(expr);
}
pub const OS_OVERLOADABLE = @compileError("unable to translate macro: undefined identifier `__overloadable__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:149:9
pub const OS_ANALYZER_SUPPRESS = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:157:9
pub const __OS_ENUM_ATTR = @compileError("unable to translate macro: undefined identifier `enum_extensibility`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:161:9
pub const __OS_ENUM_ATTR_CLOSED = @compileError("unable to translate macro: undefined identifier `enum_extensibility`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:162:9
pub const __OS_OPTIONS_ATTR = @compileError("unable to translate macro: undefined identifier `flag_enum`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:176:9
pub const OS_ENUM = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:183:9
pub const OS_CLOSED_ENUM = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:185:9
pub const OS_OPTIONS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:187:9
pub const OS_CLOSED_OPTIONS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:189:9
pub const OS_SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:240:9
pub const OS_SWIFT_UNAVAILABLE_FROM_ASYNC = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:247:9
pub const OS_REFINED_FOR_SWIFT = @compileError("unable to translate macro: undefined identifier `__swift_private__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:254:10
pub const OS_SWIFT_NAME = @compileError("unable to translate macro: undefined identifier `__swift_name__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:260:10
pub const __OS_STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:265:9
pub inline fn OS_STRINGIFY(s: anytype) @TypeOf(__OS_STRINGIFY(s)) {
    _ = &s;
    return __OS_STRINGIFY(s);
}
pub const __OS_CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:267:9
pub inline fn OS_CONCAT(x: anytype, y: anytype) @TypeOf(__OS_CONCAT(x, y)) {
    _ = &x;
    _ = &y;
    return __OS_CONCAT(x, y);
}
pub const os_prevent_tail_call_optimization = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:271:9
pub inline fn os_is_compile_time_constant(expr: anytype) @TypeOf(__builtin_constant_p(expr)) {
    _ = &expr;
    return __builtin_constant_p(expr);
}
pub const os_compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:273:9
pub const OS_NOT_TAIL_CALLED = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/os/base.h:281:9
pub const OS_ASSUME_PTR_ABI_SINGLE_BEGIN = __ASSUME_PTR_ABI_SINGLE_BEGIN;
pub const OS_ASSUME_PTR_ABI_SINGLE_END = __ASSUME_PTR_ABI_SINGLE_END;
pub const OS_UNSAFE_INDEXABLE = "";
pub const OS_HEADER_INDEXABLE = "";
pub inline fn OS_COUNTED_BY(N: anytype) @TypeOf(__counted_by(N)) {
    _ = &N;
    return __counted_by(N);
}
pub inline fn OS_SIZED_BY(N: anytype) @TypeOf(__sized_by(N)) {
    _ = &N;
    return __sized_by(N);
}
pub const _SYS_QUEUE_H_ = "";
pub inline fn __improbable(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const QMD_TRACE_ELEM = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:174:9
pub const QMD_TRACE_HEAD = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:175:9
pub const TRACEBUF = "";
pub const TRASHIT = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:177:9
pub const __MISMATCH_TAGS_PUSH = "";
pub const __MISMATCH_TAGS_POP = "";
pub const __NULLABILITY_COMPLETENESS_PUSH = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:223:9
pub const __NULLABILITY_COMPLETENESS_POP = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:226:9
pub const SLIST_HEAD = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:236:9
pub const SLIST_HEAD_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:245:9
pub const SLIST_ENTRY = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:248:9
pub inline fn SLIST_EMPTY(head: anytype) @TypeOf(head.*.slh_first == NULL) {
    _ = &head;
    return head.*.slh_first == NULL;
}
pub inline fn SLIST_FIRST(head: anytype) @TypeOf(head.*.slh_first) {
    _ = &head;
    return head.*.slh_first;
}
pub const SLIST_FOREACH = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:264:9
pub const SLIST_FOREACH_SAFE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:269:9
pub const SLIST_FOREACH_PREVPTR = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:274:9
pub const SLIST_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:279:9
pub const SLIST_INSERT_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:283:9
pub const SLIST_INSERT_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:288:9
pub inline fn SLIST_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.sle_next) {
    _ = &elm;
    _ = &field;
    return elm.*.field.sle_next;
}
pub const SLIST_REMOVE = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:295:9
pub const SLIST_REMOVE_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:313:9
pub const SLIST_REMOVE_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:318:9
pub const STAILQ_HEAD = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:325:9
pub const STAILQ_HEAD_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:335:9
pub const STAILQ_ENTRY = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:338:9
pub const STAILQ_CONCAT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:350:9
pub inline fn STAILQ_EMPTY(head: anytype) @TypeOf(head.*.stqh_first == NULL) {
    _ = &head;
    return head.*.stqh_first == NULL;
}
pub inline fn STAILQ_FIRST(head: anytype) @TypeOf(head.*.stqh_first) {
    _ = &head;
    return head.*.stqh_first;
}
pub const STAILQ_FOREACH = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:362:9
pub const STAILQ_FOREACH_SAFE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:368:9
pub const STAILQ_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:373:9
pub const STAILQ_INSERT_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:378:9
pub const STAILQ_INSERT_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:384:9
pub const STAILQ_INSERT_TAIL = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:390:9
pub const STAILQ_LAST = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:396:9
pub inline fn STAILQ_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.stqe_next) {
    _ = &elm;
    _ = &field;
    return elm.*.field.stqe_next;
}
pub const STAILQ_REMOVE = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:408:9
pub const STAILQ_REMOVE_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:426:9
pub const STAILQ_REMOVE_HEAD_UNTIL = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:432:9
pub const STAILQ_REMOVE_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:437:9
pub const STAILQ_SWAP = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:443:9
pub const LIST_HEAD = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:465:9
pub const LIST_HEAD_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:474:9
pub const LIST_ENTRY = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:477:9
pub const LIST_CHECK_HEAD = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:491:9
pub const LIST_CHECK_NEXT = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:492:9
pub const LIST_CHECK_PREV = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:493:9
pub inline fn LIST_EMPTY(head: anytype) @TypeOf(head.*.lh_first == NULL) {
    _ = &head;
    return head.*.lh_first == NULL;
}
pub inline fn LIST_FIRST(head: anytype) @TypeOf(head.*.lh_first) {
    _ = &head;
    return head.*.lh_first;
}
pub const LIST_FOREACH = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:499:9
pub const LIST_FOREACH_SAFE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:504:9
pub const LIST_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:509:9
pub const LIST_INSERT_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:513:9
pub const LIST_INSERT_BEFORE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:522:9
pub const LIST_INSERT_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:530:9
pub inline fn LIST_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.le_next) {
    _ = &elm;
    _ = &field;
    return elm.*.field.le_next;
}
pub const LIST_REMOVE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:540:9
pub const LIST_SWAP = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:551:9
pub const TAILQ_HEAD = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:569:9
pub const TAILQ_HEAD_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:580:9
pub const TAILQ_ENTRY = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:583:9
pub const TAILQ_CHECK_HEAD = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:597:9
pub const TAILQ_CHECK_NEXT = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:598:9
pub const TAILQ_CHECK_PREV = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:599:9
pub const TAILQ_CONCAT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:601:9
pub inline fn TAILQ_EMPTY(head: anytype) @TypeOf(head.*.tqh_first == NULL) {
    _ = &head;
    return head.*.tqh_first == NULL;
}
pub inline fn TAILQ_FIRST(head: anytype) @TypeOf(head.*.tqh_first) {
    _ = &head;
    return head.*.tqh_first;
}
pub const TAILQ_FOREACH = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:616:9
pub const TAILQ_FOREACH_SAFE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:621:9
pub const TAILQ_FOREACH_REVERSE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:626:9
pub const TAILQ_FOREACH_REVERSE_SAFE = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:631:9
pub const TAILQ_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:637:9
pub const TAILQ_INSERT_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:644:9
pub const TAILQ_INSERT_BEFORE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:659:9
pub const TAILQ_INSERT_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:669:9
pub const TAILQ_INSERT_TAIL = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:682:9
pub const TAILQ_LAST = @compileError("unable to translate macro: untranslatable usage of arg `headname`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:691:9
pub inline fn TAILQ_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.tqe_next) {
    _ = &elm;
    _ = &field;
    return elm.*.field.tqe_next;
}
pub const TAILQ_PREV = @compileError("unable to translate macro: untranslatable usage of arg `headname`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:700:9
pub const TAILQ_REMOVE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:707:9
pub const TAILQ_SWAP = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:726:9
pub const CIRCLEQ_HEAD = @compileError("unable to translate macro: untranslatable usage of arg `name`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:751:9
pub const CIRCLEQ_ENTRY = @compileError("unable to translate macro: untranslatable usage of arg `type`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:761:9
pub const CIRCLEQ_CHECK_HEAD = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:774:9
pub const CIRCLEQ_CHECK_NEXT = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:775:9
pub const CIRCLEQ_CHECK_PREV = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:776:9
pub inline fn CIRCLEQ_EMPTY(head: anytype) @TypeOf(head.*.cqh_first == @import("std").zig.c_translation.cast(?*anyopaque, head)) {
    _ = &head;
    return head.*.cqh_first == @import("std").zig.c_translation.cast(?*anyopaque, head);
}
pub inline fn CIRCLEQ_FIRST(head: anytype) @TypeOf(head.*.cqh_first) {
    _ = &head;
    return head.*.cqh_first;
}
pub const CIRCLEQ_FOREACH = @compileError("unable to translate C expr: unexpected token 'for'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:782:9
pub const CIRCLEQ_INIT = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:787:9
pub const CIRCLEQ_INSERT_AFTER = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:792:9
pub const CIRCLEQ_INSERT_BEFORE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:803:9
pub const CIRCLEQ_INSERT_HEAD = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:814:9
pub const CIRCLEQ_INSERT_TAIL = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:825:9
pub inline fn CIRCLEQ_LAST(head: anytype) @TypeOf(head.*.cqh_last) {
    _ = &head;
    return head.*.cqh_last;
}
pub inline fn CIRCLEQ_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.cqe_next) {
    _ = &elm;
    _ = &field;
    return elm.*.field.cqe_next;
}
pub inline fn CIRCLEQ_PREV(elm: anytype, field: anytype) @TypeOf(elm.*.field.cqe_prev) {
    _ = &elm;
    _ = &field;
    return elm.*.field.cqe_prev;
}
pub const CIRCLEQ_REMOVE = @compileError("unable to translate C expr: unexpected token 'do'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/queue.h:841:9
pub const _FSID_T = "";
pub const _GRAFTDMG_UN_ = "";
pub const GRAFTDMG_SECURE_BOOT_CRYPTEX_ARGS_VERSION = @as(c_int, 1);
pub const MAX_GRAFT_ARGS_SIZE = @as(c_int, 512);
pub const SBC_PRESERVE_MOUNT = @as(c_int, 0x0001);
pub const SBC_ALTERNATE_SHARED_REGION = @as(c_int, 0x0002);
pub const SBC_SYSTEM_CONTENT = @as(c_int, 0x0004);
pub const SBC_PANIC_ON_AUTHFAIL = @as(c_int, 0x0008);
pub const SBC_STRICT_AUTH = @as(c_int, 0x0010);
pub const SBC_PRESERVE_GRAFT = @as(c_int, 0x0020);
pub const _MOUNT_T = "";
pub const _VNODE_T = "";
pub const MFSNAMELEN = @as(c_int, 15);
pub const MFSTYPENAMELEN = @as(c_int, 16);
pub const MNAMELEN = MAXPATHLEN;
pub const MNT_EXT_ROOT_DATA_VOL = @as(c_int, 0x00000001);
pub const MNT_EXT_FSKIT = @as(c_int, 0x00000002);
pub const __DARWIN_STRUCT_STATFS64 = @compileError("unable to translate macro: undefined identifier `f_bsize`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/mount.h:105:9
pub const MNT_RDONLY = @as(c_int, 0x00000001);
pub const MNT_SYNCHRONOUS = @as(c_int, 0x00000002);
pub const MNT_NOEXEC = @as(c_int, 0x00000004);
pub const MNT_NOSUID = @as(c_int, 0x00000008);
pub const MNT_NODEV = @as(c_int, 0x00000010);
pub const MNT_UNION = @as(c_int, 0x00000020);
pub const MNT_ASYNC = @as(c_int, 0x00000040);
pub const MNT_CPROTECT = @as(c_int, 0x00000080);
pub const MNT_EXPORTED = @as(c_int, 0x00000100);
pub const MNT_REMOVABLE = @as(c_int, 0x00000200);
pub const MNT_QUARANTINE = @as(c_int, 0x00000400);
pub const MNT_LOCAL = @as(c_int, 0x00001000);
pub const MNT_QUOTA = @as(c_int, 0x00002000);
pub const MNT_ROOTFS = @as(c_int, 0x00004000);
pub const MNT_DOVOLFS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const MNT_DONTBROWSE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const MNT_IGNORE_OWNERSHIP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const MNT_AUTOMOUNTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00400000, .hex);
pub const MNT_JOURNALED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const MNT_NOUSERXATTR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const MNT_DEFWRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex);
pub const MNT_MULTILABEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000000, .hex);
pub const MNT_NOFOLLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex);
pub const MNT_NOATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000000, .hex);
pub const MNT_SNAPSHOT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const MNT_STRICTATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const MNT_UNKNOWNPERMISSIONS = MNT_IGNORE_OWNERSHIP;
pub const MNT_VISFLAGMASK = ((((((((((((((((((((((((MNT_RDONLY | MNT_SYNCHRONOUS) | MNT_NOEXEC) | MNT_NOSUID) | MNT_NODEV) | MNT_UNION) | MNT_ASYNC) | MNT_EXPORTED) | MNT_QUARANTINE) | MNT_LOCAL) | MNT_QUOTA) | MNT_REMOVABLE) | MNT_ROOTFS) | MNT_DOVOLFS) | MNT_DONTBROWSE) | MNT_IGNORE_OWNERSHIP) | MNT_AUTOMOUNTED) | MNT_JOURNALED) | MNT_NOUSERXATTR) | MNT_DEFWRITE) | MNT_MULTILABEL) | MNT_NOFOLLOW) | MNT_NOATIME) | MNT_STRICTATIME) | MNT_SNAPSHOT) | MNT_CPROTECT;
pub const MNT_UPDATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const MNT_NOBLOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const MNT_RELOAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const MNT_FORCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const MNT_CMDFLAGS = ((MNT_UPDATE | MNT_NOBLOCK) | MNT_RELOAD) | MNT_FORCE;
pub const VFS_GENERIC = @as(c_int, 0);
pub const VFS_NUMMNTOPS = @as(c_int, 1);
pub const VFS_MAXTYPENUM = @as(c_int, 1);
pub const VFS_CONF = @as(c_int, 2);
pub const MNT_WAIT = @as(c_int, 1);
pub const MNT_NOWAIT = @as(c_int, 2);
pub const MNT_DWAIT = @as(c_int, 4);
pub const VFS_CTL_VERS1 = @as(c_int, 0x01);
pub const VFS_CTL_OSTATFS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010001, .hex);
pub const VFS_CTL_UMOUNT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010002, .hex);
pub const VFS_CTL_QUERY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010003, .hex);
pub const VFS_CTL_NEWADDR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010004, .hex);
pub const VFS_CTL_TIMEO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010005, .hex);
pub const VFS_CTL_NOLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010006, .hex);
pub const VFS_CTL_SADDR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010007, .hex);
pub const VFS_CTL_DISC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010008, .hex);
pub const VFS_CTL_SERVERINFO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010009, .hex);
pub const VFS_CTL_NSTATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000A, .hex);
pub const VFS_CTL_STATFS64 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000B, .hex);
pub const VFS_CTL_STATFS = VFS_CTL_STATFS64;
pub const VQ_NOTRESP = @as(c_int, 0x0001);
pub const VQ_NEEDAUTH = @as(c_int, 0x0002);
pub const VQ_LOWDISK = @as(c_int, 0x0004);
pub const VQ_MOUNT = @as(c_int, 0x0008);
pub const VQ_UNMOUNT = @as(c_int, 0x0010);
pub const VQ_DEAD = @as(c_int, 0x0020);
pub const VQ_ASSIST = @as(c_int, 0x0040);
pub const VQ_NOTRESPLOCK = @as(c_int, 0x0080);
pub const VQ_UPDATE = @as(c_int, 0x0100);
pub const VQ_VERYLOWDISK = @as(c_int, 0x0200);
pub const VQ_SYNCEVENT = @as(c_int, 0x0400);
pub const VQ_SERVEREVENT = @as(c_int, 0x0800);
pub const VQ_QUOTA = @as(c_int, 0x1000);
pub const VQ_NEARLOWDISK = @as(c_int, 0x2000);
pub const VQ_DESIRED_DISK = @as(c_int, 0x4000);
pub const VQ_FREE_SPACE_CHANGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const VQ_FLAG10000 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000, .hex);
pub const NFS_MAX_FH_SIZE = NFSV4_MAX_FH_SIZE;
pub const NFSV4_MAX_FH_SIZE = @as(c_int, 128);
pub const NFSV3_MAX_FH_SIZE = @as(c_int, 64);
pub const NFSV2_MAX_FH_SIZE = @as(c_int, 32);
pub const CRYPTEX_AUTH_STRUCT_VERSION = @as(c_int, 1);
pub const fuse_main = @compileError("unable to translate C expr: unexpected token '*'");
// /usr/local/include/fuse/fuse.h:697:9
pub const FUSE_REGISTER_MODULE = @compileError("unable to translate macro: undefined identifier `constructor`");
// /usr/local/include/fuse/fuse.h:1058:9
pub const fuse_opt = struct_fuse_opt;
pub const fuse_args = struct_fuse_args;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const _OSUnalignedU16 = struct__OSUnalignedU16;
pub const _OSUnalignedU32 = struct__OSUnalignedU32;
pub const _OSUnalignedU64 = struct__OSUnalignedU64;
pub const timespec = struct_timespec;
pub const ostat = struct_ostat;
pub const _filesec = struct__filesec;
pub const setattr_x = struct_setattr_x;
pub const fuse_file_info = struct_fuse_file_info;
pub const fuse_conn_info = struct_fuse_conn_info;
pub const fuse_session = struct_fuse_session;
pub const fuse_chan = struct_fuse_chan;
pub const fuse_pollhandle = struct_fuse_pollhandle;
pub const fuse_buf_flags = enum_fuse_buf_flags;
pub const fuse_buf_copy_flags = enum_fuse_buf_copy_flags;
pub const fuse_buf = struct_fuse_buf;
pub const fuse_bufvec = struct_fuse_bufvec;
pub const flocktimeout = struct_flocktimeout;
pub const radvisory = struct_radvisory;
pub const fsignatures = struct_fsignatures;
pub const fsupplement = struct_fsupplement;
pub const fchecklv = struct_fchecklv;
pub const fgetsigsinfo = struct_fgetsigsinfo;
pub const fstore = struct_fstore;
pub const fpunchhole = struct_fpunchhole;
pub const ftrimactivefile = struct_ftrimactivefile;
pub const fspecread = struct_fspecread;
pub const fattributiontag = struct_fattributiontag;
pub const log2phys = struct_log2phys;
pub const tm = struct_tm;
pub const utimbuf = struct_utimbuf;
pub const iovec = struct_iovec;
pub const uio_rw = enum_uio_rw;
pub const __darwin_arm_exception_state = struct___darwin_arm_exception_state;
pub const __darwin_arm_exception_state64 = struct___darwin_arm_exception_state64;
pub const __darwin_arm_thread_state = struct___darwin_arm_thread_state;
pub const __darwin_arm_thread_state64 = struct___darwin_arm_thread_state64;
pub const __darwin_arm_vfp_state = struct___darwin_arm_vfp_state;
pub const __darwin_arm_neon_state64 = struct___darwin_arm_neon_state64;
pub const __darwin_arm_neon_state = struct___darwin_arm_neon_state;
pub const __arm_pagein_state = struct___arm_pagein_state;
pub const __arm_legacy_debug_state = struct___arm_legacy_debug_state;
pub const __darwin_arm_debug_state32 = struct___darwin_arm_debug_state32;
pub const __darwin_arm_debug_state64 = struct___darwin_arm_debug_state64;
pub const __darwin_arm_cpmu_state64 = struct___darwin_arm_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigaction = struct_sigaction;
pub const sigvec = struct_sigvec;
pub const sigstack = struct_sigstack;
pub const au_tid = struct_au_tid;
pub const au_tid_addr = struct_au_tid_addr;
pub const au_mask = struct_au_mask;
pub const auditinfo = struct_auditinfo;
pub const auditinfo_addr = struct_auditinfo_addr;
pub const auditpinfo = struct_auditpinfo;
pub const auditpinfo_addr = struct_auditpinfo_addr;
pub const au_session = struct_au_session;
pub const au_expire_after = struct_au_expire_after;
pub const au_token = struct_au_token;
pub const au_qctrl = struct_au_qctrl;
pub const audit_stat = struct_audit_stat;
pub const audit_fstat = struct_audit_fstat;
pub const au_evclass_map = struct_au_evclass_map;
pub const audit_session_flags = enum_audit_session_flags;
pub const mach_port_status = struct_mach_port_status;
pub const mach_port_limits = struct_mach_port_limits;
pub const mach_port_info_ext = struct_mach_port_info_ext;
pub const mach_port_guard_info = struct_mach_port_guard_info;
pub const mach_port_qos = struct_mach_port_qos;
pub const mach_service_port_info = struct_mach_service_port_info;
pub const mach_port_options = struct_mach_port_options;
pub const mach_port_guard_exception_codes = enum_mach_port_guard_exception_codes;
pub const label = struct_label;
pub const ucred = struct_ucred;
pub const posix_cred = struct_posix_cred;
pub const xucred = struct_xucred;
pub const timeval = struct_timeval;
pub const timeval64 = struct_timeval64;
pub const itimerval = struct_itimerval;
pub const clockinfo = struct_clockinfo;
pub const fsobj_id = struct_fsobj_id;
pub const attrlist = struct_attrlist;
pub const attribute_set = struct_attribute_set;
pub const attrreference = struct_attrreference;
pub const diskextent = struct_diskextent;
pub const vol_capabilities_attr = struct_vol_capabilities_attr;
pub const vol_attributes_attr = struct_vol_attributes_attr;
pub const fssearchblock = struct_fssearchblock;
pub const searchstate = struct_searchstate;
pub const fsid = struct_fsid;
pub const secure_boot_cryptex_args = struct_secure_boot_cryptex_args;
pub const graft_args = union_graft_args;
pub const vnode = struct_vnode;
pub const vfsstatfs = struct_vfsstatfs;
pub const vfsconf = struct_vfsconf;
pub const vfsidctl = struct_vfsidctl;
pub const vfsquery = struct_vfsquery;
pub const vfs_server = struct_vfs_server;
pub const netfs_status = struct_netfs_status;
pub const fhandle = struct_fhandle;
pub const fuse = struct_fuse;
pub const fuse_cmd = struct_fuse_cmd;
pub const fuse_dirhandle = struct_fuse_dirhandle;
pub const fuse_operations = struct_fuse_operations;
pub const fuse_context = struct_fuse_context;
pub const fuse_fs = struct_fuse_fs;
pub const fuse_module = struct_fuse_module;
