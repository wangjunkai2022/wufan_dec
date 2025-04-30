.class Lcom/join/mgps/adapter/c$r$a;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c$r;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/c$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$r$a;->a:Lcom/join/mgps/adapter/c$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/c$r$a;->a:Lcom/join/mgps/adapter/c$r;

    iget-object p1, p1, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/c$r$a;->a:Lcom/join/mgps/adapter/c$r;

    iget-object v0, v0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/c$r$a;->a:Lcom/join/mgps/adapter/c$r;

    iget-object v0, v0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
