.class Lcom/join/mgps/activity/ForumMyActivity$k$e;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity$k;->i(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/ForumMyActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$e;->b:Lcom/join/mgps/activity/ForumMyActivity$k;

    iput p2, p0, Lcom/join/mgps/activity/ForumMyActivity$k$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$e;->a:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
