.class Lcom/xinzhu/overmind/entity/pm/InstalledModule$a;
.super Ljava/lang/Object;
.source "InstalledModule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/entity/pm/InstalledModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xinzhu/overmind/entity/pm/InstalledModule;",
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
.method public a(Landroid/os/Parcel;)Lcom/xinzhu/overmind/entity/pm/InstalledModule;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstalledModule;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstalledModule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/xinzhu/overmind/entity/pm/InstalledModule;
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
    new-array p1, p1, [Lcom/xinzhu/overmind/entity/pm/InstalledModule;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/entity/pm/InstalledModule$a;->a(Landroid/os/Parcel;)Lcom/xinzhu/overmind/entity/pm/InstalledModule;

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
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/entity/pm/InstalledModule$a;->b(I)[Lcom/xinzhu/overmind/entity/pm/InstalledModule;

    move-result-object p1

    return-object p1
.end method
