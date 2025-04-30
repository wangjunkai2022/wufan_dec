.class Lcom/join/mgps/Util/k1$a$a;
.super Ljava/lang/Object;
.source "PayGameUtils.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k1$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/k1$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/k1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPayGamePay::onFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xxxxx"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, p1, Lcom/join/mgps/Util/k1$a;->d:Lcom/join/mgps/Util/k1$b;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-interface {v0, p1}, Lcom/join/mgps/Util/k1$b;->a(Lcom/join/mgps/Util/k1$c;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPayGamePay::onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xxxxx"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PayGameCheckResult;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->isState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/k1$c;->f(J)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {v0}, Lcom/join/mgps/Util/k1$c;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v2, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->e:Lcom/join/mgps/Util/k1;

    invoke-static {v0}, Lcom/join/mgps/Util/k1;->a(Lcom/join/mgps/Util/k1;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/Util/k1$c;->f(J)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/k1$c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v2, v2, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/k1$c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v2, v2, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/k1$c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p1

    const v2, 0x186a6

    if-ne p1, v2, :cond_4

    .line 15
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkPayGamePay::original result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->defaultAll()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, v0, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/Util/k1$a$a;->a:Lcom/join/mgps/Util/k1$a;

    iget-object v0, p1, Lcom/join/mgps/Util/k1$a;->d:Lcom/join/mgps/Util/k1$b;

    iget-object p1, p1, Lcom/join/mgps/Util/k1$a;->c:Lcom/join/mgps/Util/k1$c;

    invoke-interface {v0, p1}, Lcom/join/mgps/Util/k1$b;->a(Lcom/join/mgps/Util/k1$c;)V

    return-void
.end method
