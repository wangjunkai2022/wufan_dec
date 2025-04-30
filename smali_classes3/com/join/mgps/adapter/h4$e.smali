.class Lcom/join/mgps/adapter/h4$e;
.super Ljava/lang/Object;
.source "PapaMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/MgpapaMainItemBean;

.field final synthetic b:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$e;->b:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$e;->a:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$e;->b:Lcom/join/mgps/adapter/h4;

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$e;->a:Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/h4;->p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$e;->b:Lcom/join/mgps/adapter/h4;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/MGInformationActivity_;->T0(Landroid/content/Context;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
