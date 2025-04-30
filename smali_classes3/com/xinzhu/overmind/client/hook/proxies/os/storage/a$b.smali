.class Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a$b;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "StorageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getVolumeList"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindStorageManager()Lcom/xinzhu/overmind/client/frameworks/g;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/xinzhu/overmind/client/frameworks/g;->d(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    .line 3
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindStorageManager()Lcom/xinzhu/overmind/client/frameworks/g;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xinzhu/overmind/client/frameworks/g;->d(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method
