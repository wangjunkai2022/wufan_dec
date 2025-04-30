.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb;
.super Lcom/papa91/wrapper/SystemUiHiderBase;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/wrapper/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    .line 3
    new-instance p2, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;

    invoke-direct {p2, p0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;-><init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V

    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 4
    new-instance p2, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;

    invoke-direct {p2, p0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;-><init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V

    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 6
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 7
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 8
    iget p2, p0, Lcom/papa91/wrapper/SystemUiHider;->mFlags:I

    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_0

    or-int/lit16 p1, p1, 0x404

    .line 9
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    :cond_0
    and-int/lit8 p1, p2, 0x6

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    return p0
.end method

.method static synthetic access$200(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    return p0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x200

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
