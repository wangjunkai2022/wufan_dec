.class public abstract Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;
.super Ljava/lang/Object;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/pulltorefresh/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupListAdapter"
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->setInnerAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method private setInnerAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->adapter:Landroid/widget/BaseAdapter;

    return-void
.end method


# virtual methods
.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupTitle(I)Ljava/lang/String;
.end method

.method public abstract getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
