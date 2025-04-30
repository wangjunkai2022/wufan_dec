.class Lcom/join/mgps/Util/f2$a;
.super Landroid/os/Handler;
.source "TagAliasOperatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/f2$a;->a:Lcom/join/mgps/Util/f2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JIGUANG-TagAliasHelper"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "retry set mobile number"

    aput-object v4, v0, v1

    .line 3
    invoke-static {v2, v0}, Lcom/join/mgps/Util/u0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget v0, Lcom/join/mgps/Util/f2;->e:I

    add-int/2addr v0, v3

    sput v0, Lcom/join/mgps/Util/f2;->e:I

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/f2$a;->a:Lcom/join/mgps/Util/f2;

    invoke-static {v0}, Lcom/join/mgps/Util/f2;->b(Lcom/join/mgps/Util/f2;)Landroid/util/SparseArray;

    move-result-object v0

    sget v4, Lcom/join/mgps/Util/f2;->e:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/f2$a;->a:Lcom/join/mgps/Util/f2;

    invoke-static {v0}, Lcom/join/mgps/Util/f2;->c(Lcom/join/mgps/Util/f2;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/Util/f2$a;->a:Lcom/join/mgps/Util/f2;

    invoke-static {v0}, Lcom/join/mgps/Util/f2;->c(Lcom/join/mgps/Util/f2;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/join/mgps/Util/f2;->e:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/f2;->h(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "#unexcepted - context was null"

    aput-object v0, p1, v1

    .line 9
    invoke-static {v2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "#unexcepted - msg obj was incorrect"

    aput-object v0, p1, v1

    .line 10
    invoke-static {v2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
