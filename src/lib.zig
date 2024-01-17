var count: u32 = 0;

export fn getCount() u32 {
    return count;
}

export fn add(n: u32) void {
    count += n;
}

export fn sub(n: u32) void {
    count -= n;
}
