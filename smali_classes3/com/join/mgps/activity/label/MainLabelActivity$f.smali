.class Lcom/join/mgps/activity/label/MainLabelActivity$f;
.super Ljava/lang/Object;
.source "MainLabelActivity.java"

# interfaces
.implements Lru/noties/scrollable/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->M0(Lcom/join/mgps/dto/MainLabelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$f;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$f;->a:Lcom/join/mgps/activity/label/MainLabelActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->I0()Lcom/join/mgps/fragment/u0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lru/noties/scrollable/j;->x(IJ)V

    :cond_0
    return-void
.end method
