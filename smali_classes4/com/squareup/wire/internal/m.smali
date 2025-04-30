.class public final Lcom/squareup/wire/internal/m;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RuntimeMessageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/internal/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Lcom/squareup/wire/ProtoAdapter<",
        "TM;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,277:1\n37#2,2:278\n37#2,2:284\n11208#3:280\n11543#3,3:281\n11208#3:286\n11543#3,3:287\n11208#3:290\n11543#3,3:291\n*E\n*S KotlinDebug\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n*L\n184#1,2:278\n44#1,2:284\n185#1:280\n185#1,3:281\n45#1:286\n45#1,3:287\n58#1:290\n58#1,3:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u0019*\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\u0008\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u0005:\u0001JBU\u0012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u000003\u0012\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u000103\u0012\u001e\u0010A\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001070>\u0012\u0008\u0010E\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010G\u001a\u00020F\u00a2\u0006\u0004\u0008H\u0010IJ\r\u0010\u0006\u001a\u00028\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0013\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\tH\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ;\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00030$\"\u0004\u0008\u0002\u0010\u001f\"\u0004\u0008\u0003\u0010 2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030!2\u0006\u0010#\u001a\u00028\u0002\u00a2\u0006\u0004\u0008%\u0010&JW\u0010,\u001a\u00020\u000e\"\u0004\u0008\u0002\u0010 2\u0008\u0010\'\u001a\u0004\u0018\u00018\u00002\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00020$2\u0008\u0010)\u001a\u0004\u0018\u00018\u00022 \u0010+\u001a\u001c\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0*\u00a2\u0006\u0004\u0008,\u0010-R!\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180$8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001c\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u0001038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u00104R+\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000107068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u00088\u0010:R\u001f\u0010=\u001a\u00020\u0018*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003078F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010<R1\u0010A\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001070>8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010?\u001a\u0004\u0008\u0002\u0010@R\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u0000038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u00104R\u001f\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00180$8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010/\u001a\u0004\u0008B\u00101\u00a8\u0006K"
    }
    d2 = {
        "Lcom/squareup/wire/internal/m;",
        "Lcom/squareup/wire/Message;",
        "M",
        "Lcom/squareup/wire/Message$a;",
        "B",
        "Lcom/squareup/wire/ProtoAdapter;",
        "S",
        "()Lcom/squareup/wire/Message$a;",
        "value",
        "",
        "L",
        "(Lcom/squareup/wire/Message;)I",
        "Lcom/squareup/wire/n;",
        "writer",
        "",
        "K",
        "(Lcom/squareup/wire/n;Lcom/squareup/wire/Message;)V",
        "T",
        "(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;",
        "",
        "other",
        "",
        "equals",
        "hashCode",
        "",
        "U",
        "(Lcom/squareup/wire/Message;)Ljava/lang/String;",
        "Lcom/squareup/wire/m;",
        "reader",
        "J",
        "(Lcom/squareup/wire/m;)Lcom/squareup/wire/Message;",
        "F",
        "A",
        "Lcom/squareup/wire/internal/j;",
        "jsonIntegration",
        "framework",
        "",
        "R",
        "(Lcom/squareup/wire/internal/j;Ljava/lang/Object;)Ljava/util/List;",
        "message",
        "jsonAdapters",
        "redactedFieldsAdapter",
        "Lkotlin/Function3;",
        "encodeValue",
        "V",
        "(Lcom/squareup/wire/Message;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V",
        "P",
        "Ljava/util/List;",
        "O",
        "()Ljava/util/List;",
        "jsonAlternateNames",
        "Ljava/lang/Class;",
        "Ljava/lang/Class;",
        "builderType",
        "",
        "Lcom/squareup/wire/internal/d;",
        "N",
        "[Lcom/squareup/wire/internal/d;",
        "()[Lcom/squareup/wire/internal/d;",
        "fieldBindingsArray",
        "(Lcom/squareup/wire/internal/d;)Ljava/lang/String;",
        "jsonName",
        "",
        "Ljava/util/Map;",
        "()Ljava/util/Map;",
        "fieldBindings",
        "Q",
        "messageType",
        "jsonNames",
        "typeUrl",
        "Lcom/squareup/wire/Syntax;",
        "syntax",
        "<init>",
        "(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V",
        "a",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final T:Ljava/lang/String; = "\u2588\u2588"

.field public static final U:Lcom/squareup/wire/internal/m$a;


# instance fields
.field private final N:[Lcom/squareup/wire/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/wire/internal/d<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final Q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final R:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/d<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/internal/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/internal/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/internal/m;->U:Lcom/squareup/wire/internal/m$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TB;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/squareup/wire/internal/d<",
            "TM;TB;>;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldBindings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    iput-object p1, p0, Lcom/squareup/wire/internal/m;->Q:Ljava/lang/Class;

    iput-object p2, p0, Lcom/squareup/wire/internal/m;->R:Ljava/lang/Class;

    iput-object p3, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Lcom/squareup/wire/internal/d;

    .line 3
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/squareup/wire/internal/d;

    iput-object p1, p0, Lcom/squareup/wire/internal/m;->N:[Lcom/squareup/wire/internal/d;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    array-length p4, p1

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length p4, p1

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object v0, p1, p5

    .line 6
    invoke-virtual {p0, v0}, Lcom/squareup/wire/internal/m;->P(Lcom/squareup/wire/internal/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p3, p0, Lcom/squareup/wire/internal/m;->O:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/squareup/wire/internal/m;->N:[Lcom/squareup/wire/internal/d;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    array-length p4, p1

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length p4, p1

    :goto_1
    if-ge p2, p4, :cond_3

    aget-object p5, p1, p2

    .line 11
    invoke-virtual {p0, p5}, Lcom/squareup/wire/internal/m;->P(Lcom/squareup/wire/internal/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lcom/squareup/wire/internal/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p5}, Lcom/squareup/wire/internal/d;->b()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {p0, p5}, Lcom/squareup/wire/internal/m;->P(Lcom/squareup/wire/internal/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lcom/squareup/wire/internal/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p5}, Lcom/squareup/wire/internal/d;->getName()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    .line 13
    :goto_2
    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iput-object p3, p0, Lcom/squareup/wire/internal/m;->P:Ljava/util/List;

    return-void
.end method

.method public static final H(Ljava/lang/Class;)Lcom/squareup/wire/internal/m;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/squareup/wire/internal/m<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/internal/m;->U:Lcom/squareup/wire/internal/m$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/internal/m$a;->a(Ljava/lang/Class;)Lcom/squareup/wire/internal/m;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)Lcom/squareup/wire/internal/m;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")",
            "Lcom/squareup/wire/internal/m<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/internal/m;->U:Lcom/squareup/wire/internal/m$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/squareup/wire/internal/m$a;->b(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)Lcom/squareup/wire/internal/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/m;->T(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/m;->U(Lcom/squareup/wire/Message;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public J(Lcom/squareup/wire/m;)Lcom/squareup/wire/Message;
    .locals 8
    .param p1    # Lcom/squareup/wire/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/m;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/internal/m;->S()Lcom/squareup/wire/Message$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/m;->e()J

    move-result-wide v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/m;->i()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/m;->g(J)Lokio/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/squareup/wire/Message$a;->c()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/internal/d;

    if-eqz v4, :cond_2

    .line 7
    :try_start_0
    invoke-interface {v4}, Lcom/squareup/wire/internal/d;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-interface {v4}, Lcom/squareup/wire/internal/d;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v4}, Lcom/squareup/wire/internal/d;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    .line 10
    :goto_1
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v0, v5}, Lcom/squareup/wire/internal/d;->c(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/wire/m;->j()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/m;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$a;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$a;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 15
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->a:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$a;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$a;

    goto :goto_0
.end method

.method public K(Lcom/squareup/wire/n;Lcom/squareup/wire/Message;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/n;",
            "TM;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/d;

    .line 2
    invoke-interface {v1, p2}, Lcom/squareup/wire/internal/d;->d(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->getTag()I

    move-result v1

    invoke-virtual {v3, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->m(Lcom/squareup/wire/n;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->i()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/n;->a(Lokio/ByteString;)V

    return-void
.end method

.method public L(Lcom/squareup/wire/Message;)I
    .locals 5
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->f()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/internal/d;

    .line 3
    invoke-interface {v2, p1}, Lcom/squareup/wire/internal/d;->d(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Lcom/squareup/wire/internal/d;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-interface {v2}, Lcom/squareup/wire/internal/d;->getTag()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->o(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->i()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p1, v0}, Lcom/squareup/wire/Message;->h(I)V

    return v0
.end method

.method public final M()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/d<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    return-object v0
.end method

.method public final N()[Lcom/squareup/wire/internal/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/squareup/wire/internal/d<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->N:[Lcom/squareup/wire/internal/d;

    return-object v0
.end method

.method public final O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->P:Ljava/util/List;

    return-object v0
.end method

.method public final P(Lcom/squareup/wire/internal/d;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/squareup/wire/internal/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/d<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$jsonName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/squareup/wire/internal/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/squareup/wire/internal/d;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/squareup/wire/internal/d;->g()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final Q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->O:Ljava/util/List;

    return-object v0
.end method

.method public final R(Lcom/squareup/wire/internal/j;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/squareup/wire/internal/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/internal/j<",
            "TF;TA;>;TF;)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "jsonIntegration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/squareup/wire/internal/d;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, [Lcom/squareup/wire/internal/d;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->w()Lcom/squareup/wire/Syntax;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v4}, Lcom/squareup/wire/internal/j;->c(Ljava/lang/Object;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/internal/d;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final S()Lcom/squareup/wire/Message$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->R:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "builderType.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/squareup/wire/Message$a;

    return-object v0
.end method

.method public T(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 5
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->g()Lcom/squareup/wire/Message$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/d;

    .line 3
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    sget-object v4, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    if-ne v2, v4, :cond_2

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is required and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cannot be redacted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    const-class v2, Lcom/squareup/wire/Message;

    .line 8
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 9
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->e()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v1, p1}, Lcom/squareup/wire/internal/d;->i(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 12
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-static {v2, v3}, Lcom/squareup/wire/internal/f;->a(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/squareup/wire/internal/d;->h(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 14
    :cond_5
    :goto_1
    invoke-interface {v1, p1}, Lcom/squareup/wire/internal/d;->i(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v1}, Lcom/squareup/wire/internal/d;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/wire/ProtoAdapter;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-interface {v1, p1, v2}, Lcom/squareup/wire/internal/d;->h(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/squareup/wire/Message$a;->e()Lcom/squareup/wire/Message$a;

    .line 18
    invoke-virtual {p1}, Lcom/squareup/wire/Message$a;->c()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public U(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/squareup/wire/internal/m;->S:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/internal/d;

    .line 3
    invoke-interface {v2, p1}, Lcom/squareup/wire/internal/d;->d(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ", "

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v2}, Lcom/squareup/wire/internal/d;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v2}, Lcom/squareup/wire/internal/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "\u2588\u2588"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/wire/internal/m;->Q:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final V(Lcom/squareup/wire/Message;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TM;",
            "Ljava/util/List<",
            "+TA;>;TA;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "-TA;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonAdapters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->N:[Lcom/squareup/wire/internal/d;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Lcom/squareup/wire/internal/m;->N:[Lcom/squareup/wire/internal/d;

    aget-object v3, v3, v2

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, p1}, Lcom/squareup/wire/internal/d;->d(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->w()Lcom/squareup/wire/Syntax;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lcom/squareup/wire/internal/d;->f(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v3}, Lcom/squareup/wire/internal/d;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/squareup/wire/internal/m;->O:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/squareup/wire/internal/m;->O:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p4, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    .line 10
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "__redacted_fields"

    invoke-interface {p4, p1, v1, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public bridge synthetic c(Lcom/squareup/wire/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/m;->J(Lcom/squareup/wire/m;)Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/squareup/wire/internal/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/internal/m;

    iget-object p1, p1, Lcom/squareup/wire/internal/m;->Q:Ljava/lang/Class;

    iget-object v0, p0, Lcom/squareup/wire/internal/m;->Q:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/internal/m;->K(Lcom/squareup/wire/n;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/m;->Q:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/m;->L(Lcom/squareup/wire/Message;)I

    move-result p1

    return p1
.end method
