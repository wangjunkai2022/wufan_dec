.class public final enum Lcom/squareup/wire/FieldEncoding;
.super Ljava/lang/Enum;
.source "FieldEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/FieldEncoding$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/FieldEncoding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002R\u001c\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/squareup/wire/FieldEncoding;",
        "",
        "Lcom/squareup/wire/ProtoAdapter;",
        "rawProtoAdapter",
        "",
        "value",
        "I",
        "getValue$wire_runtime",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "a",
        "VARINT",
        "FIXED64",
        "LENGTH_DELIMITED",
        "FIXED32",
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
.field private static final synthetic $VALUES:[Lcom/squareup/wire/FieldEncoding;

.field public static final Companion:Lcom/squareup/wire/FieldEncoding$a;

.field public static final enum FIXED32:Lcom/squareup/wire/FieldEncoding;

.field public static final enum FIXED64:Lcom/squareup/wire/FieldEncoding;

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

.field public static final enum VARINT:Lcom/squareup/wire/FieldEncoding;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/wire/FieldEncoding;

    new-instance v1, Lcom/squareup/wire/FieldEncoding;

    const-string v2, "VARINT"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    aput-object v1, v0, v3

    new-instance v1, Lcom/squareup/wire/FieldEncoding;

    const-string v2, "FIXED64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    aput-object v1, v0, v3

    new-instance v1, Lcom/squareup/wire/FieldEncoding;

    const-string v2, "LENGTH_DELIMITED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    aput-object v1, v0, v3

    new-instance v1, Lcom/squareup/wire/FieldEncoding;

    const-string v2, "FIXED32"

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    aput-object v1, v0, v3

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->$VALUES:[Lcom/squareup/wire/FieldEncoding;

    new-instance v0, Lcom/squareup/wire/FieldEncoding$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/FieldEncoding$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->Companion:Lcom/squareup/wire/FieldEncoding$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/wire/FieldEncoding;->value:I

    return-void
.end method

.method public static final get$wire_runtime(I)Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->Companion:Lcom/squareup/wire/FieldEncoding$a;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/FieldEncoding$a;->a(I)Lcom/squareup/wire/FieldEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/FieldEncoding;
    .locals 1

    const-class v0, Lcom/squareup/wire/FieldEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/FieldEncoding;
    .locals 1

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->$VALUES:[Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v0}, [Lcom/squareup/wire/FieldEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method


# virtual methods
.method public final getValue$wire_runtime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/wire/FieldEncoding;->value:I

    return v0
.end method

.method public final rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/wire/d;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapter;

    :goto_0
    return-object v0
.end method
