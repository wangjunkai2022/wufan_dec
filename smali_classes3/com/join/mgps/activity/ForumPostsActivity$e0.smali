.class public Lcom/join/mgps/activity/ForumPostsActivity$e0;
.super Landroid/widget/PopupWindow;
.source "ForumPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e0"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p3, p4, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$e0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$e0;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
