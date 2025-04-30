.class Lcom/join/mgps/Util/k1$a;
.super Ljava/lang/Thread;
.source "PayGameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/Util/k1$c;

.field final synthetic d:Lcom/join/mgps/Util/k1$b;

.field final synthetic e:Lcom/join/mgps/Util/k1;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/k1;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$c;Lcom/join/mgps/Util/k1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/k1$a;->e:Lcom/join/mgps/Util/k1;

    iput-object p2, p0, Lcom/join/mgps/Util/k1$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/k1$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    iput-object p5, p0, Lcom/join/mgps/Util/k1$a;->d:Lcom/join/mgps/Util/k1$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Lcom/join/mgps/dto/PayGameDataRequest;

    invoke-direct {v2}, Lcom/join/mgps/dto/PayGameDataRequest;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setToken(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/Util/k1$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setDevice_id(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setUid(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PayGameDataRequest;->setApp_key(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/join/mgps/Util/k1$a$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/k1$a$a;-><init>(Lcom/join/mgps/Util/k1$a;)V

    invoke-static {v2, v0}, Lcom/join/mgps/rpc/m;->b(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V

    return-void
.end method
