.class public final synthetic Lcom/join/mgps/customview/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/customview/z;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/customview/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/y;->a:Lcom/join/mgps/customview/z;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/join/mgps/customview/y;->a:Lcom/join/mgps/customview/z;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/customview/z;->a(Lcom/join/mgps/customview/z;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
