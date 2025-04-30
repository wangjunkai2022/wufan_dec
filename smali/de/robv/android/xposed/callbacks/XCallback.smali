.class public abstract Lde/robv/android/xposed/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/callbacks/XCallback$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lde/robv/android/xposed/callbacks/XCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    return-void
.end method

.method public static callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    :try_start_0
    aget-object v1, v1, v0

    check-cast v1, Lde/robv/android/xposed/callbacks/XCallback;

    invoke-virtual {v1, p0}, Lde/robv/android/xposed/callbacks/XCallback;->call(Lde/robv/android/xposed/callbacks/XCallback$Param;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This object was not created for use with callAll"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method protected call(Lde/robv/android/xposed/callbacks/XCallback$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public compareTo(Lde/robv/android/xposed/callbacks/XCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p1, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    iget v1, p0, Lde/robv/android/xposed/callbacks/XCallback;->priority:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ge v0, p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    check-cast p1, Lde/robv/android/xposed/callbacks/XCallback;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback;->compareTo(Lde/robv/android/xposed/callbacks/XCallback;)I

    move-result p1

    return p1
.end method
