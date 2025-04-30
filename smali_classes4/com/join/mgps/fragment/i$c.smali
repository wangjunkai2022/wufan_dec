.class Lcom/join/mgps/fragment/i$c;
.super Ljava/lang/Object;
.source "ClassifyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i;->Z(Lcom/join/mgps/dto/ClassifyBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ClassifyGameTypeBean;

.field final synthetic b:Lcom/join/mgps/fragment/i;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i;Lcom/join/mgps/dto/ClassifyGameTypeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i$c;->b:Lcom/join/mgps/fragment/i;

    iput-object p2, p0, Lcom/join/mgps/fragment/i$c;->a:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i$c;->b:Lcom/join/mgps/fragment/i;

    invoke-static {p1}, Lcom/join/mgps/fragment/i;->W(Lcom/join/mgps/fragment/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/i$c;->a:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/i$c;->a:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
