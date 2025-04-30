.class Lcom/join/mgps/adapter/ForumBaseAdapter$d0;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->t()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->w()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->s()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/listener/f;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/listener/f;->a(I)V

    :goto_0
    return-void
.end method
