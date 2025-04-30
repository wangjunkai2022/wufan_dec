.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant$a;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    new-array p1, p1, [Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant$a;->a(Landroid/os/Parcel;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant$a;->b(I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;

    move-result-object p1

    return-object p1
.end method
