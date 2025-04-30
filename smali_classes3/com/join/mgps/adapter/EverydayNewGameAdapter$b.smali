.class Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;
.super Landroid/os/CountDownTimer;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;->s(Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AppBean;

.field final synthetic b:Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

.field final synthetic c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;JJLcom/join/mgps/dto/AppBean;Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    iput-object p6, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->a:Lcom/join/mgps/dto/AppBean;

    iput-object p7, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method a(J)[J
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    const-wide/32 v0, 0x15180

    .line 2
    div-long v2, p1, v0

    .line 3
    rem-long v0, p1, v0

    const-wide/16 v4, 0xe10

    div-long/2addr v0, v4

    .line 4
    rem-long v4, p1, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 5
    rem-long/2addr p1, v6

    div-long/2addr p1, v6

    const/4 v6, 0x4

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    const/4 v2, 0x1

    aput-wide v0, v6, v2

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    const/4 v0, 0x3

    aput-wide p1, v6, v0

    return-object v6
.end method

.method public b(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd:hh"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    iget-object v1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->a:Lcom/join/mgps/dto/AppBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->c(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;Lcom/join/mgps/dto/AppBean;)V

    return-void
.end method

.method public onTick(J)V
    .locals 13

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->a(J)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aget-wide v2, v1, v2

    const/4 v4, 0x1

    .line 3
    aget-wide v4, v1, v4

    const/4 v6, 0x2

    .line 4
    aget-wide v6, v1, v6

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-gtz v12, :cond_0

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    :cond_0
    add-long/2addr v4, v8

    :cond_1
    const-wide/16 v6, 0x18

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    add-long/2addr v2, v8

    goto :goto_0

    :cond_2
    move-wide v10, v4

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->a:Lcom/join/mgps/dto/AppBean;

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/AppBean;->setResidual_time(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-static {p2, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->b(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->b:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$b;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;

    iget-object p1, p1, Lcom/join/mgps/adapter/EverydayNewGameAdapter$e;->c:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
