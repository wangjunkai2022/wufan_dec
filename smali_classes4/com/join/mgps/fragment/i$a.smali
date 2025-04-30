.class Lcom/join/mgps/fragment/i$a;
.super Ljava/lang/Object;
.source "ClassifyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/fragment/i;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i$a;->c:Lcom/join/mgps/fragment/i;

    iput p2, p0, Lcom/join/mgps/fragment/i$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/fragment/i$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i$a;->c:Lcom/join/mgps/fragment/i;

    invoke-static {p1}, Lcom/join/mgps/fragment/i;->W(Lcom/join/mgps/fragment/i;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/fragment/i$a;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/i$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
