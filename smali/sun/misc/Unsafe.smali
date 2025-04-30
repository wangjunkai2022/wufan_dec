.class public Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native addressSize()I
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native getByte(J)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public native getInt(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public native getInt(Ljava/lang/Object;J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset"
        }
    .end annotation
.end method

.method public native getLong(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public native getLong(Ljava/lang/Object;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset"
        }
    .end annotation
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset"
        }
    .end annotation
.end method

.method public native getShort(Ljava/lang/Object;J)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset"
        }
    .end annotation
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native putByte(JB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "x"
        }
    .end annotation
.end method

.method public native putInt(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset",
            "newValue"
        }
    .end annotation
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset",
            "newValue"
        }
    .end annotation
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "offset",
            "newValue"
        }
    .end annotation
.end method
