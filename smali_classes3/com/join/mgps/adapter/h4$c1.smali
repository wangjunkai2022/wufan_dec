.class Lcom/join/mgps/adapter/h4$c1;
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
.field final synthetic a:Lcom/join/mgps/adapter/h4$v2;

.field final synthetic b:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/adapter/h4$v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$c1;->b:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$c1;->a:Lcom/join/mgps/adapter/h4$v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$c1;->a:Lcom/join/mgps/adapter/h4$v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/h4$v2;->a(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$c1;->b:Lcom/join/mgps/adapter/h4;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4;->o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastTopTip()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$c1;->a:Lcom/join/mgps/adapter/h4$v2;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4$v2;->e(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method
