.class public Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "WindowSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/vm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "addToDisplay"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    if-eqz p3, :cond_2

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v3, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
