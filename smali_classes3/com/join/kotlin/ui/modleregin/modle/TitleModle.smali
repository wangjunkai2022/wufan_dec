.class public final Lcom/join/kotlin/ui/modleregin/modle/TitleModle;
.super Ljava/lang/Object;
.source "TitleModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ>\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0015\u001a\u0004\u0008\u0016\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/modle/TitleModle;",
        "",
        "",
        "component1",
        "component2",
        "Lcom/join/mgps/Util/IntentDateBean;",
        "component3",
        "",
        "component4",
        "()Ljava/lang/Boolean;",
        "title",
        "subTitle",
        "intentDateBean",
        "showWhiteBack",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "Ljava/lang/Boolean;",
        "getShowWhiteBack",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "Lcom/join/mgps/Util/IntentDateBean;",
        "getIntentDateBean",
        "()Lcom/join/mgps/Util/IntentDateBean;",
        "getSubTitle",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final intentDateBean:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final showWhiteBack:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    iput-object p4, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 2
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/modleregin/modle/TitleModle;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    iget-object v1, p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-object v0
.end method

.method public final getShowWhiteBack()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TitleModle(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentDateBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showWhiteBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->showWhiteBack:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
