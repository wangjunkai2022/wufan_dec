.class Lcom/airsaid/pickerviewlibrary/b$a;
.super Ljava/lang/Object;
.source "CityPickerView.java"

# interfaces
.implements Lcom/airsaid/pickerviewlibrary/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/b;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airsaid/pickerviewlibrary/b;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/b;->z:Lf/a;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->M(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->M(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    .line 4
    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v0}, Lcom/airsaid/pickerviewlibrary/b;->O(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v1}, Lcom/airsaid/pickerviewlibrary/b;->M(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    invoke-static {v2}, Lcom/airsaid/pickerviewlibrary/b;->N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    iget-object p2, p2, Lcom/airsaid/pickerviewlibrary/b;->z:Lf/a;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lf/a;->onCitySelect(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/b$a;->a:Lcom/airsaid/pickerviewlibrary/b;

    iget-object p2, p2, Lcom/airsaid/pickerviewlibrary/b;->z:Lf/a;

    invoke-interface {p2, v0, v1, p1}, Lf/a;->onCitySelect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
