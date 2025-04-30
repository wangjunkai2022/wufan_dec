.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;
.super Ljava/lang/Object;
.source "JCVideoPlayerStandard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iput-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C(II)V

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    iget-object v1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    iget p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    invoke-static {v1, p1}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    if-ne p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#fff85959"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method
