.class Lcom/join/mgps/activity/PapaLookOtherActivity_$n;
.super Ljava/lang/Object;
.source "PapaLookOtherActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaLookOtherActivity_;->H0(ILcom/join/mgps/dto/CollectionDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/CollectionDataBean;

.field final synthetic c:Lcom/join/mgps/activity/PapaLookOtherActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->c:Lcom/join/mgps/activity/PapaLookOtherActivity_;

    iput p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->b:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->c:Lcom/join/mgps/activity/PapaLookOtherActivity_;

    iget v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->a:I

    iget-object v2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;->b:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->M0(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V

    return-void
.end method
