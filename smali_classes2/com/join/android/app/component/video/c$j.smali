.class Lcom/join/android/app/component/video/c$j;
.super Ljava/lang/Object;
.source "MyListViewVideoHelper.java"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$j;->a:Lcom/join/android/app/component/video/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "MyListViewVideoHelper"

    if-nez p1, :cond_0

    const-string p1, "099999 "

    .line 1
    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/c$j;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v0, "res:///2131234008"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->m(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/c$j;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$j;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "aaaaaaaaaaa "

    .line 5
    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
