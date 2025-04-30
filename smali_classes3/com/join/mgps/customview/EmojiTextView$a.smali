.class Lcom/join/mgps/customview/EmojiTextView$a;
.super Ljava/lang/Object;
.source "EmojiTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/EmojiTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/EmojiTextView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/EmojiTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/EmojiTextView$a;->a:Lcom/join/mgps/customview/EmojiTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EmojiTextView$a;->a:Lcom/join/mgps/customview/EmojiTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/EmojiTextView$a;->a:Lcom/join/mgps/customview/EmojiTextView;

    invoke-static {v1}, Lcom/join/mgps/customview/EmojiTextView;->a(Lcom/join/mgps/customview/EmojiTextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EmojiTextView$a;->a:Lcom/join/mgps/customview/EmojiTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v1, v4

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method
