.class Lcom/join/mgps/customview/MyRadioGroup$c;
.super Ljava/lang/Object;
.source "MyRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/MyRadioGroup;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/MyRadioGroup;Lcom/join/mgps/customview/MyRadioGroup$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MyRadioGroup$c;-><init>(Lcom/join/mgps/customview/MyRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p2}, Lcom/join/mgps/customview/MyRadioGroup;->c(Lcom/join/mgps/customview/MyRadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/join/mgps/customview/MyRadioGroup;->d(Lcom/join/mgps/customview/MyRadioGroup;Z)Z

    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p2}, Lcom/join/mgps/customview/MyRadioGroup;->e(Lcom/join/mgps/customview/MyRadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p2}, Lcom/join/mgps/customview/MyRadioGroup;->e(Lcom/join/mgps/customview/MyRadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lcom/join/mgps/customview/MyRadioGroup;->f(Lcom/join/mgps/customview/MyRadioGroup;IZ)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p2, v1}, Lcom/join/mgps/customview/MyRadioGroup;->d(Lcom/join/mgps/customview/MyRadioGroup;Z)Z

    .line 6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/MyRadioGroup$c;->a:Lcom/join/mgps/customview/MyRadioGroup;

    invoke-static {p2, p1}, Lcom/join/mgps/customview/MyRadioGroup;->g(Lcom/join/mgps/customview/MyRadioGroup;I)V

    return-void
.end method
