.class public Lcom/xinzhu/overmind/os/BinderHelper;
.super Ljava/lang/Object;
.source "BinderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/d;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    invoke-direct {v2}, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;-><init>()V

    if-eqz v1, :cond_0

    .line 4
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    .line 5
    iget v0, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 6
    iget v1, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    iput v1, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 7
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/u;->c(I)Lcom/xinzhu/haunted/android/os/u;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/haunted/android/os/u;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:Landroid/os/UserHandle;

    return-object v2

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 10
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:Landroid/os/UserHandle;

    return-object v2
.end method

.method public static c(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
