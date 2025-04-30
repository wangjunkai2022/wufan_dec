.class Lcom/join/mgps/activity/z$c;
.super Ljava/lang/Object;
.source "GameDetialModleFourActivity.java"

# interfaces
.implements Ll1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/z;->g1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/z$c;->a:Lcom/join/mgps/activity/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/z$c;->a:Lcom/join/mgps/activity/z;

    iget-object p1, p1, Lcom/join/mgps/activity/z;->w0:Ll1/f;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ll1/f;->L()V

    :cond_0
    return-void
.end method
