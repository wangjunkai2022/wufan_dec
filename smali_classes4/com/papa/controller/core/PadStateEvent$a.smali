.class Lcom/papa/controller/core/PadStateEvent$a;
.super Ljava/lang/Object;
.source "PadStateEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/core/PadStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/papa/controller/core/PadStateEvent;",
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
.method public a(Landroid/os/Parcel;)Lcom/papa/controller/core/PadStateEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/PadStateEvent;

    invoke-direct {v0, p1}, Lcom/papa/controller/core/PadStateEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/papa/controller/core/PadStateEvent;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/papa/controller/core/PadStateEvent;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/PadStateEvent$a;->a(Landroid/os/Parcel;)Lcom/papa/controller/core/PadStateEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/controller/core/PadStateEvent$a;->b(I)[Lcom/papa/controller/core/PadStateEvent;

    move-result-object p1

    return-object p1
.end method
