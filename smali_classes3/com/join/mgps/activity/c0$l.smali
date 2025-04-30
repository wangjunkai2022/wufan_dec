.class Lcom/join/mgps/activity/c0$l;
.super Ljava/lang/Object;
.source "GameDetialModleThreeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/c0;->v0(Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/c0;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/c0$l;->e:Lcom/join/mgps/activity/c0;

    iput-object p2, p0, Lcom/join/mgps/activity/c0$l;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/join/mgps/activity/c0$l;->b:Z

    iput p4, p0, Lcom/join/mgps/activity/c0$l;->c:I

    iput p5, p0, Lcom/join/mgps/activity/c0$l;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/c0$l;->e:Lcom/join/mgps/activity/c0;

    iget-object v1, p0, Lcom/join/mgps/activity/c0$l;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/join/mgps/activity/c0$l;->b:Z

    iget v3, p0, Lcom/join/mgps/activity/c0$l;->c:I

    iget v4, p0, Lcom/join/mgps/activity/c0$l;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/c0;->f1(Lcom/join/mgps/activity/c0;Ljava/lang/String;ZII)V

    return-void
.end method
