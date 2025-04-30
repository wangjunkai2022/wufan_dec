.class public abstract Lcom/papa91/wrapper/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/wrapper/SystemUiHider$1;

    invoke-direct {v0}, Lcom/papa91/wrapper/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 3
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 5
    iput p3, p0, Lcom/papa91/wrapper/SystemUiHider;->mFlags:I

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/papa91/wrapper/SystemUiHider;
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/papa91/wrapper/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/wrapper/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    :goto_0
    return-void
.end method
