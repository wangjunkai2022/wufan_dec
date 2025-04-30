.class Lcom/mob/mgs/impl/c$4;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mgs/impl/c$4;->e:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$4;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mob/mgs/impl/c$4;->b:J

    iput-object p5, p0, Lcom/mob/mgs/impl/c$4;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/mob/mgs/impl/c$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mgs/impl/c$4;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/mob/mgs/impl/c$4;->b:J

    invoke-static {v0, v1, v2}, Lcom/mob/mcl/MobMCL;->syncSuid(Ljava/lang/String;J)Z

    .line 2
    iget-object v0, p0, Lcom/mob/mgs/impl/c$4;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/mgs/impl/c$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/mgs/impl/c$4;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/mgs/impl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
