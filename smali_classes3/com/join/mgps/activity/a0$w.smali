.class Lcom/join/mgps/activity/a0$w;
.super Ljava/lang/Object;
.source "GameDetialModleFourActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/a0;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ResultMainBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/a0$w;->c:Lcom/join/mgps/activity/a0;

    iput-object p2, p0, Lcom/join/mgps/activity/a0$w;->a:Lcom/join/mgps/dto/ResultMainBean;

    iput p3, p0, Lcom/join/mgps/activity/a0$w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a0$w;->c:Lcom/join/mgps/activity/a0;

    iget-object v1, p0, Lcom/join/mgps/activity/a0$w;->a:Lcom/join/mgps/dto/ResultMainBean;

    iget v2, p0, Lcom/join/mgps/activity/a0$w;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/a0;->m1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method
