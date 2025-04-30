.class public Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;
.super Landroid/widget/ListView;
.source "TTDislikeListView.java"


# instance fields
.field private mDislikeController:Lcom/bytedance/sdk/openadsdk/TTDislikeController;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Lcom/bytedance/sdk/openadsdk/TTDislikeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mDislikeController:Lcom/bytedance/sdk/openadsdk/TTDislikeController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public setDislikeInfo(Lcom/bytedance/sdk/openadsdk/TTDislikeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mDislikeController:Lcom/bytedance/sdk/openadsdk/TTDislikeController;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
