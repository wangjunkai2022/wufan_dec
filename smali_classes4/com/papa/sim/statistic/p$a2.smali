.class Lcom/papa/sim/statistic/p$a2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$a2;->i:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$a2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$a2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/papa/sim/statistic/p$a2;->c:J

    iput p6, p0, Lcom/papa/sim/statistic/p$a2;->d:I

    iput-object p7, p0, Lcom/papa/sim/statistic/p$a2;->e:Ljava/lang/String;

    iput p8, p0, Lcom/papa/sim/statistic/p$a2;->f:I

    iput p9, p0, Lcom/papa/sim/statistic/p$a2;->g:I

    iput p10, p0, Lcom/papa/sim/statistic/p$a2;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$a2;->i:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$a2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$a2;->b:Ljava/lang/String;

    iget-wide v5, p0, Lcom/papa/sim/statistic/p$a2;->c:J

    iget v7, p0, Lcom/papa/sim/statistic/p$a2;->d:I

    iget-object v8, p0, Lcom/papa/sim/statistic/p$a2;->e:Ljava/lang/String;

    iget v11, p0, Lcom/papa/sim/statistic/p$a2;->f:I

    iget v12, p0, Lcom/papa/sim/statistic/p$a2;->g:I

    iget v13, p0, Lcom/papa/sim/statistic/p$a2;->h:I

    const-wide/16 v9, -0x1

    invoke-virtual/range {v1 .. v13}, Lcom/papa/sim/statistic/o;->L(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIII)V

    return-void
.end method
