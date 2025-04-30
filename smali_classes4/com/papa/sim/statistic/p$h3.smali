.class Lcom/papa/sim/statistic/p$h3;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->N1(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    iput p2, p0, Lcom/papa/sim/statistic/p$h3;->a:I

    iput-object p3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/sim/statistic/p$h3;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADOpenInstant:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADBattle:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADSelLevel:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADGArchiving:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADCheat:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Lcom/papa/sim/statistic/p$h3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->pspMemberADDialog:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->pspADOneKey:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$h3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$h3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
