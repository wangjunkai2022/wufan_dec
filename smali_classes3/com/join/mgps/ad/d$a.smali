.class Lcom/join/mgps/ad/d$a;
.super Ljava/lang/Object;
.source "GDTInteractionRewardVideo.java"

# interfaces
.implements Lcom/qq/e/comm/listeners/NegativeFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/d;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/d$a;->a:Lcom/join/mgps/ad/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplainSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$a;->a:Lcom/join/mgps/ad/d;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->d:Ljava/lang/String;

    return-void
.end method
