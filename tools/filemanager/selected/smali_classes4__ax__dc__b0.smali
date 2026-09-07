.class public Lax/dc/b0;
.super Ljava/net/URLConnection;
.source "SourceFile"

# interfaces
.implements Lax/dc/Z;


# static fields
.field static final D0:I = 0x2e

.field static final E0:I = 0x5c0

.field static F0:Lax/ec/e;

.field static G0:J

.field static H0:Z

.field protected static I0:Lax/dc/d;


# instance fields
.field A0:Ljava/lang/String;

.field B0:[Lax/Xb/b;

.field C0:I

.field private X:Ljava/lang/String;

.field private Y:J

.field private Z:J

.field private k0:I

.field private l0:J

.field private m0:J

.field private n0:J

.field private o0:Z

.field private p0:I

.field private q:Ljava/lang/String;

.field private q0:Lax/dc/v;

.field private r0:Lax/dc/e;

.field s0:Lax/dc/r;

.field t0:Lax/dc/l0;

.field u0:Ljava/lang/String;

.field v0:I

.field w0:I

.field x0:Z

.field y0:I

.field z0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lax/ec/e;->a()Lax/ec/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lax/Xb/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    .line 15
    .line 16
    const-wide/16 v1, 0x1388

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lax/Xb/a;->f(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Lax/dc/b0;->G0:J

    .line 23
    .line 24
    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Lax/Xb/a;->a(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Lax/dc/b0;->H0:Z

    .line 32
    .line 33
    new-instance v0, Lax/dc/d;

    .line 34
    .line 35
    invoke-direct {v0}, Lax/dc/d;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lax/dc/b0;->I0:Lax/dc/d;

    .line 39
    .line 40
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method constructor <init>(Lax/dc/b0;Ljava/lang/String;IIJJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lax/dc/b0;->J()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lax/dc/i;->a:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, p4, 0x10

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-direct {p0, v0}, Lax/dc/b0;-><init>(Ljava/net/URL;)V

    .line 18
    iget-object v0, p1, Lax/dc/b0;->s0:Lax/dc/r;

    iput-object v0, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 19
    iget-object v0, p1, Lax/dc/b0;->X:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p1, Lax/dc/b0;->t0:Lax/dc/l0;

    iput-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 21
    iget-object v0, p1, Lax/dc/b0;->r0:Lax/dc/e;

    iput-object v0, p0, Lax/dc/b0;->r0:Lax/dc/e;

    .line 22
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 25
    :cond_3
    iget-object v0, p1, Lax/dc/b0;->X:Ljava/lang/String;

    const-string v2, "\\"

    if-nez v0, :cond_4

    .line 26
    iput-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p1, Lax/dc/b0;->u0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5c

    if-eqz v0, :cond_5

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lax/dc/b0;->u0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 30
    :goto_2
    iput p3, p0, Lax/dc/b0;->w0:I

    .line 31
    iput p4, p0, Lax/dc/b0;->k0:I

    .line 32
    iput-wide p5, p0, Lax/dc/b0;->Y:J

    .line 33
    iput-wide p7, p0, Lax/dc/b0;->Z:J

    .line 34
    iput-wide p9, p0, Lax/dc/b0;->m0:J

    .line 35
    iput-boolean v1, p0, Lax/dc/b0;->o0:Z

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Lax/dc/b0;->G0:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lax/dc/b0;->n0:J

    iput-wide p1, p0, Lax/dc/b0;->l0:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Lax/dc/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lax/dc/b0;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lax/dc/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Lax/dc/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Lax/dc/b0;-><init>(Ljava/net/URL;Lax/dc/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lax/dc/r;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Lax/dc/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Lax/dc/b0;-><init>(Ljava/net/URL;Lax/dc/r;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_0

    .line 4
    iput p3, p0, Lax/dc/b0;->p0:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 6
    new-instance v0, Lax/dc/r;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lax/dc/r;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lax/dc/b0;-><init>(Ljava/net/URL;Lax/dc/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lax/dc/r;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    .line 8
    iput v0, p0, Lax/dc/b0;->p0:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lax/dc/b0;->q0:Lax/dc/v;

    .line 10
    iput-object v0, p0, Lax/dc/b0;->r0:Lax/dc/e;

    .line 11
    iput-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    if-nez p2, :cond_0

    .line 12
    new-instance p2, Lax/dc/r;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lax/dc/r;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 13
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    return-void
.end method

.method private T(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/dc/s0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lax/dc/s0;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lax/dc/r0;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lax/dc/r0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lax/dc/b0;->w0:I

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lax/dc/s0;->e1:Lax/dc/a;

    .line 21
    .line 22
    invoke-interface {p1}, Lax/dc/a;->a()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iput-wide v1, p0, Lax/dc/b0;->m0:J

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    sget-wide v3, Lax/dc/b0;->G0:J

    .line 33
    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, p0, Lax/dc/b0;->n0:J

    .line 36
    .line 37
    :cond_0
    iget-object p1, v0, Lax/dc/s0;->e1:Lax/dc/a;

    .line 38
    .line 39
    invoke-interface {p1}, Lax/dc/a;->b()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    return-wide v0
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method static U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v0, v3, :cond_3

    .line 10
    .line 11
    aget-char v3, p0, v0

    .line 12
    .line 13
    const/16 v4, 0x26

    .line 14
    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Ljava/lang/String;

    .line 20
    .line 21
    sub-int v4, v1, v2

    .line 22
    .line 23
    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/String;

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x3d

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    move v1, v0

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-le v1, v2, :cond_4

    .line 53
    .line 54
    new-instance v0, Ljava/lang/String;

    .line 55
    .line 56
    sub-int v3, v1, v2

    .line 57
    .line 58
    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    new-instance p1, Ljava/lang/String;

    .line 70
    .line 71
    array-length v0, p0

    .line 72
    sub-int/2addr v0, v1

    .line 73
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4
    const/4 p0, 0x0

    .line 78
    return-object p0
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
.end method

.method private a()Lax/dc/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/dc/b0;->q0:Lax/dc/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lax/dc/v;

    .line 6
    .line 7
    invoke-direct {v0}, Lax/dc/v;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lax/dc/b0;->q0:Lax/dc/v;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lax/dc/b0;->q0:Lax/dc/v;

    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/dc/b0;->r0:Lax/dc/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lax/dc/e;->k0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public C()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    iget v0, p0, Lax/dc/b0;->w0:I

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iput v1, p0, Lax/dc/b0;->w0:I

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Lax/dc/b0;->g()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "IPC$"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 44
    .line 45
    iget-object v0, v0, Lax/dc/l0;->d:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "LPT1:"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const/16 v0, 0x20

    .line 56
    .line 57
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 61
    .line 62
    iget-object v0, v0, Lax/dc/l0;->d:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "COMM"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/16 v0, 0x40

    .line 73
    .line 74
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/16 v0, 0x8

    .line 78
    .line 79
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x2

    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v0}, Lax/Xb/b;->b()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    instance-of v2, v2, Lax/bc/g;

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0}, Lax/Xb/b;->b()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lax/bc/g;

    .line 121
    .line 122
    invoke-virtual {v0}, Lax/bc/g;->v()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/16 v2, 0x1d

    .line 127
    .line 128
    if-eq v0, v2, :cond_6

    .line 129
    .line 130
    const/16 v2, 0x1b

    .line 131
    .line 132
    if-ne v0, v2, :cond_7

    .line 133
    .line 134
    :cond_6
    iput v1, p0, Lax/dc/b0;->w0:I

    .line 135
    .line 136
    return v1

    .line 137
    :cond_7
    const/4 v0, 0x4

    .line 138
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lax/dc/a0;

    .line 143
    .line 144
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v1, v2, v0}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_8
    :goto_0
    iput v1, p0, Lax/dc/b0;->w0:I

    .line 155
    .line 156
    :cond_9
    :goto_1
    iget v0, p0, Lax/dc/b0;->w0:I

    .line 157
    .line 158
    return v0
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method D()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    const/4 v7, 0x0

    .line 24
    const/16 v8, 0x2f

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    if-ge v4, v2, :cond_d

    .line 28
    .line 29
    if-eqz v6, :cond_b

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    if-eq v6, v9, :cond_0

    .line 33
    .line 34
    if-eq v6, v7, :cond_9

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_0
    aget-char v10, v0, v4

    .line 38
    .line 39
    if-ne v10, v8, :cond_1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    const/16 v11, 0x2e

    .line 43
    .line 44
    if-ne v10, v11, :cond_3

    .line 45
    .line 46
    add-int/lit8 v12, v4, 0x1

    .line 47
    .line 48
    if-ge v12, v2, :cond_2

    .line 49
    .line 50
    aget-char v13, v0, v12

    .line 51
    .line 52
    if-ne v13, v8, :cond_3

    .line 53
    .line 54
    :cond_2
    move v4, v12

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    add-int/lit8 v12, v4, 0x1

    .line 57
    .line 58
    if-ge v12, v2, :cond_8

    .line 59
    .line 60
    if-ne v10, v11, :cond_8

    .line 61
    .line 62
    aget-char v10, v0, v12

    .line 63
    .line 64
    if-ne v10, v11, :cond_8

    .line 65
    .line 66
    add-int/lit8 v10, v4, 0x2

    .line 67
    .line 68
    if-ge v10, v2, :cond_4

    .line 69
    .line 70
    aget-char v11, v0, v10

    .line 71
    .line 72
    if-ne v11, v8, :cond_8

    .line 73
    .line 74
    :cond_4
    if-ne v5, v9, :cond_5

    .line 75
    .line 76
    :goto_1
    move v4, v10

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .line 79
    .line 80
    if-le v4, v9, :cond_7

    .line 81
    .line 82
    add-int/lit8 v5, v5, -0x2

    .line 83
    .line 84
    aget-char v5, v1, v5

    .line 85
    .line 86
    if-ne v5, v8, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v5, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    :goto_3
    move v5, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_8
    const/4 v6, 0x2

    .line 94
    :cond_9
    aget-char v7, v0, v4

    .line 95
    .line 96
    if-ne v7, v8, :cond_a

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    :cond_a
    add-int/lit8 v8, v5, 0x1

    .line 100
    .line 101
    aput-char v7, v1, v5

    .line 102
    .line 103
    move v5, v8

    .line 104
    goto :goto_4

    .line 105
    :cond_b
    aget-char v6, v0, v4

    .line 106
    .line 107
    if-eq v6, v8, :cond_c

    .line 108
    .line 109
    return-object v7

    .line 110
    :cond_c
    add-int/lit8 v7, v5, 0x1

    .line 111
    .line 112
    aput-char v6, v1, v5

    .line 113
    .line 114
    move v5, v7

    .line 115
    const/4 v6, 0x1

    .line 116
    :goto_4
    add-int/2addr v4, v9

    .line 117
    goto :goto_0

    .line 118
    :cond_d
    new-instance v0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {v0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "\\"

    .line 126
    .line 127
    if-le v5, v9, :cond_11

    .line 128
    .line 129
    add-int/lit8 v3, v5, -0x1

    .line 130
    .line 131
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-gez v0, :cond_e

    .line 136
    .line 137
    iget-object v0, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_e
    if-ne v0, v3, :cond_f

    .line 149
    .line 150
    iget-object v1, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 157
    .line 158
    iput-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_f
    iget-object v2, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v2, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 170
    .line 171
    aget-char v1, v1, v3

    .line 172
    .line 173
    if-ne v1, v8, :cond_10

    .line 174
    .line 175
    move v5, v3

    .line 176
    :cond_10
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 181
    .line 182
    const/16 v1, 0x5c

    .line 183
    .line 184
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_11
    iput-object v7, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 194
    .line 195
    :cond_12
    :goto_5
    iget-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 196
    .line 197
    return-object v0
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method E()Z
    .locals 2

    .line 1
    iget v0, p0, Lax/dc/b0;->C0:I

    .line 2
    .line 3
    iget-object v1, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lax/dc/l0;->a:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public G()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget v0, p0, Lax/dc/b0;->k0:I

    .line 22
    .line 23
    const/16 v3, 0x10

    .line 24
    .line 25
    and-int/2addr v0, v3

    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    return v2
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public H()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "$"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lax/dc/b0;->k0:I

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    and-int/2addr v0, v3

    .line 37
    if-ne v0, v3, :cond_3

    .line 38
    .line 39
    return v2

    .line 40
    :cond_3
    return v1
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method I()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lax/dc/b0;->x0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lax/dc/b0;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lax/dc/b0;->y0:I

    .line 12
    .line 13
    iget-object v1, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 14
    .line 15
    iget v1, v1, Lax/dc/l0;->i:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method J()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lax/dc/b0;->w0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lax/Xb/b;->b()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    instance-of v3, v3, Lax/bc/g;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lax/Xb/b;->b()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lax/bc/g;

    .line 44
    .line 45
    invoke-virtual {v0}, Lax/bc/g;->v()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v3, 0x1d

    .line 50
    .line 51
    if-eq v0, v3, :cond_1

    .line 52
    .line 53
    const/16 v3, 0x1b

    .line 54
    .line 55
    if-ne v0, v3, :cond_2

    .line 56
    .line 57
    :cond_1
    iput v2, p0, Lax/dc/b0;->w0:I

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    const/4 v0, 0x4

    .line 61
    iput v0, p0, Lax/dc/b0;->w0:I

    .line 62
    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    return v0

    .line 65
    :cond_4
    :goto_0
    iput v2, p0, Lax/dc/b0;->w0:I

    .line 66
    .line 67
    return v1
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method public K()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lax/dc/b0;->Z:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    return-wide v0
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public L()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lax/dc/b0;->n0:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lax/dc/b0;->m0:J

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lax/dc/s0;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lax/dc/s0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lax/dc/r0;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lax/dc/r0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lax/dc/s0;->e1:Lax/dc/a;

    .line 37
    .line 38
    invoke-interface {v0}, Lax/dc/a;->a()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lax/dc/b0;->m0:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-le v0, v2, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lax/dc/b0;->w0:I

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    if-eq v0, v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0x102

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lax/dc/b0;->V(Ljava/lang/String;I)Lax/dc/j;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lax/dc/j;->getSize()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iput-wide v0, p0, Lax/dc/b0;->m0:J

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-wide/16 v0, 0x0

    .line 79
    .line 80
    iput-wide v0, p0, Lax/dc/b0;->m0:J

    .line 81
    .line 82
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    sget-wide v2, Lax/dc/b0;->G0:J

    .line 87
    .line 88
    add-long/2addr v0, v2

    .line 89
    iput-wide v0, p0, Lax/dc/b0;->n0:J

    .line 90
    .line 91
    iget-wide v0, p0, Lax/dc/b0;->m0:J

    .line 92
    .line 93
    return-wide v0
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method public M()[Lax/dc/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "*"

    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Lax/dc/b0;->N(Ljava/lang/String;ILax/dc/f0;Lax/dc/c0;)[Lax/dc/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method N(Ljava/lang/String;ILax/dc/f0;Lax/dc/c0;)[Lax/dc/b0;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lax/dc/b0;->m(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-array p1, p1, [Lax/dc/b0;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Lax/dc/b0;

    .line 26
    .line 27
    return-object p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
.end method

.method public O()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    sget v1, Lax/ec/e;->X:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "mkdir: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v1, Lax/dc/x;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lax/dc/x;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lax/dc/b0;->a()Lax/dc/v;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v1, v0}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    iput-wide v0, p0, Lax/dc/b0;->n0:J

    .line 54
    .line 55
    iput-wide v0, p0, Lax/dc/b0;->l0:J

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v0, Lax/dc/a0;

    .line 59
    .line 60
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method P(Lax/dc/s;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p1, Lax/dc/s;->C0:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-byte v3, p1, Lax/dc/s;->Y:B

    .line 14
    .line 15
    const/16 v4, 0x25

    .line 16
    .line 17
    const-string v5, "A:"

    .line 18
    .line 19
    if-eq v3, v4, :cond_2

    .line 20
    .line 21
    const/16 v4, 0x32

    .line 22
    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    check-cast p1, Lax/dc/P;

    .line 27
    .line 28
    iget-byte p1, p1, Lax/dc/P;->d1:B

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    if-eq p1, v3, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 v5, 0x0

    .line 38
    :goto_0
    iget-object p1, p0, Lax/dc/b0;->z0:Ljava/lang/String;

    .line 39
    .line 40
    if-eq p1, v5, :cond_4

    .line 41
    .line 42
    return v1

    .line 43
    :cond_4
    iget-object p1, p0, Lax/dc/b0;->A0:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    return v1

    .line 50
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_6

    .line 55
    .line 56
    return v1

    .line 57
    :cond_6
    return v2
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method Q(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lax/dc/b0;->R(IIII)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lax/dc/b0;->v0:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lax/dc/b0;->x0:Z

    .line 16
    .line 17
    iget-object p1, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 18
    .line 19
    iget p1, p1, Lax/dc/l0;->i:I

    .line 20
    .line 21
    iput p1, p0, Lax/dc/b0;->y0:I

    .line 22
    .line 23
    return-void
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
.end method

.method R(IIII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->g()V

    .line 2
    .line 3
    .line 4
    sget v0, Lax/ec/e;->X:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "open0: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 34
    .line 35
    iget-object v0, v0, Lax/dc/l0;->f:Lax/dc/i0;

    .line 36
    .line 37
    iget-object v0, v0, Lax/dc/i0;->h:Lax/dc/k0;

    .line 38
    .line 39
    const/16 v1, 0x10

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lax/dc/k0;->u(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Lax/dc/D;

    .line 48
    .line 49
    invoke-direct {v0}, Lax/dc/D;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lax/dc/C;

    .line 53
    .line 54
    iget-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 55
    .line 56
    iget v5, p0, Lax/dc/b0;->p0:I

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    move v3, p1

    .line 60
    move v4, p2

    .line 61
    move v6, p3

    .line 62
    move v7, p4

    .line 63
    invoke-direct/range {v1 .. v8}, Lax/dc/C;-><init>(Ljava/lang/String;IIIIILax/dc/s;)V

    .line 64
    .line 65
    .line 66
    instance-of p1, p0, Lax/dc/g0;

    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget p1, v1, Lax/dc/C;->T0:I

    .line 72
    .line 73
    or-int/lit8 p1, p1, 0x16

    .line 74
    .line 75
    iput p1, v1, Lax/dc/C;->T0:I

    .line 76
    .line 77
    iget p1, v1, Lax/dc/C;->U0:I

    .line 78
    .line 79
    const/high16 p3, 0x20000

    .line 80
    .line 81
    or-int/2addr p1, p3

    .line 82
    iput p1, v1, Lax/dc/C;->U0:I

    .line 83
    .line 84
    iput-boolean p2, v0, Lax/dc/D;->X0:Z

    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0, v1, v0}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 87
    .line 88
    .line 89
    iget p1, v0, Lax/dc/D;->L0:I

    .line 90
    .line 91
    iget p3, v0, Lax/dc/D;->N0:I

    .line 92
    .line 93
    and-int/lit16 p3, p3, 0x7fff

    .line 94
    .line 95
    iput p3, p0, Lax/dc/b0;->k0:I

    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide p3

    .line 101
    sget-wide v0, Lax/dc/b0;->G0:J

    .line 102
    .line 103
    add-long/2addr p3, v0

    .line 104
    iput-wide p3, p0, Lax/dc/b0;->l0:J

    .line 105
    .line 106
    iput-boolean p2, p0, Lax/dc/b0;->o0:Z

    .line 107
    .line 108
    return p1

    .line 109
    :cond_2
    move v3, p1

    .line 110
    move v4, p2

    .line 111
    new-instance p1, Lax/dc/H;

    .line 112
    .line 113
    invoke-direct {p1}, Lax/dc/H;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance p2, Lax/dc/G;

    .line 117
    .line 118
    iget-object p3, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 119
    .line 120
    const/4 p4, 0x0

    .line 121
    invoke-direct {p2, p3, v4, v3, p4}, Lax/dc/G;-><init>(Ljava/lang/String;IILax/dc/s;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p2, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 125
    .line 126
    .line 127
    iget p1, p1, Lax/dc/H;->K0:I

    .line 128
    .line 129
    return p1
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
.end method

.method protected S(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int v6, v0, v3

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v5

    .line 22
    const/16 v1, 0x2e

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    if-le v6, v7, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v3, 0x1

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_0

    .line 34
    .line 35
    return v7

    .line 36
    :cond_0
    if-le v0, v7, :cond_1

    .line 37
    .line 38
    add-int/lit8 v2, v5, 0x1

    .line 39
    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne v2, v1, :cond_1

    .line 45
    .line 46
    return v7

    .line 47
    :cond_1
    if-ne v6, v0, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    move-object v1, p1

    .line 51
    move-object v4, p2

    .line 52
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return v7

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    return p1
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
.end method

.method V(Ljava/lang/String;I)Lax/dc/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->g()V

    .line 2
    .line 3
    .line 4
    sget v0, Lax/ec/e;->X:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "queryPath: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 32
    .line 33
    iget-object v0, v0, Lax/dc/l0;->f:Lax/dc/i0;

    .line 34
    .line 35
    iget-object v0, v0, Lax/dc/i0;->h:Lax/dc/k0;

    .line 36
    .line 37
    const/16 v1, 0x10

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lax/dc/k0;->u(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lax/dc/u0;

    .line 46
    .line 47
    invoke-direct {v0, p2}, Lax/dc/u0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lax/dc/t0;

    .line 51
    .line 52
    invoke-direct {v1, p1, p2}, Lax/dc/t0;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v0}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lax/dc/u0;->e1:Lax/dc/j;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_1
    new-instance p2, Lax/dc/J;

    .line 62
    .line 63
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 64
    .line 65
    iget-object v0, v0, Lax/dc/l0;->f:Lax/dc/i0;

    .line 66
    .line 67
    iget-object v0, v0, Lax/dc/i0;->h:Lax/dc/k0;

    .line 68
    .line 69
    iget-object v0, v0, Lax/dc/k0;->B0:Lax/dc/k0$a;

    .line 70
    .line 71
    iget v0, v0, Lax/dc/k0$a;->n:I

    .line 72
    .line 73
    mul-int/lit16 v0, v0, 0x3e8

    .line 74
    .line 75
    int-to-long v0, v0

    .line 76
    const-wide/16 v2, 0x3c

    .line 77
    .line 78
    mul-long v0, v0, v2

    .line 79
    .line 80
    invoke-direct {p2, v0, v1}, Lax/dc/J;-><init>(J)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lax/dc/I;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lax/dc/I;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, p2}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 89
    .line 90
    .line 91
    return-object p2
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
.end method

.method public W(Lax/dc/b0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_6

    .line 13
    .line 14
    invoke-virtual {p1}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eq v0, v2, :cond_6

    .line 23
    .line 24
    iget-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v2}, Lax/dc/b0;->X(Lax/dc/s;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p1, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p1, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1, v2}, Lax/dc/b0;->X(Lax/dc/s;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 48
    .line 49
    iget-object v2, p1, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lax/dc/l0;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    sget v0, Lax/ec/e;->X:I

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    if-lt v0, v1, :cond_4

    .line 61
    .line 62
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "renameTo: "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " -> "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, p1, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    const-wide/16 v0, 0x0

    .line 97
    .line 98
    iput-wide v0, p0, Lax/dc/b0;->n0:J

    .line 99
    .line 100
    iput-wide v0, p0, Lax/dc/b0;->l0:J

    .line 101
    .line 102
    iput-wide v0, p1, Lax/dc/b0;->l0:J

    .line 103
    .line 104
    new-instance v0, Lax/dc/M;

    .line 105
    .line 106
    iget-object v1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 107
    .line 108
    iget-object p1, p1, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {v0, v1, p1}, Lax/dc/M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lax/dc/b0;->a()Lax/dc/v;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, v0, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    new-instance p1, Lax/dc/a0;

    .line 122
    .line 123
    invoke-direct {p1, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_6
    new-instance p1, Lax/dc/a0;

    .line 128
    .line 129
    invoke-direct {p1, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method

.method X(Lax/dc/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lax/dc/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->g()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lax/dc/b0;->I0:Lax/dc/d;

    .line 10
    .line 11
    iget-object v2, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 12
    .line 13
    iget-object v3, v2, Lax/dc/l0;->f:Lax/dc/i0;

    .line 14
    .line 15
    iget-object v3, v3, Lax/dc/i0;->h:Lax/dc/k0;

    .line 16
    .line 17
    iget-object v3, v3, Lax/dc/k0;->J0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v2, Lax/dc/l0;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2, v4, v5}, Lax/dc/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/dc/r;)Lax/dc/e;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_e

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-byte v0, p1, Lax/dc/s;->Y:B

    .line 36
    .line 37
    const/16 v4, 0x25

    .line 38
    .line 39
    const-string v5, "A:"

    .line 40
    .line 41
    if-eq v0, v4, :cond_1

    .line 42
    .line 43
    const/16 v4, 0x32

    .line 44
    .line 45
    if-eq v0, v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, p1

    .line 49
    check-cast v0, Lax/dc/P;

    .line 50
    .line 51
    iget-byte v0, v0, Lax/dc/P;->d1:B

    .line 52
    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 54
    .line 55
    const/16 v4, 0x10

    .line 56
    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object v5, v3

    .line 61
    :goto_0
    move-object v0, v1

    .line 62
    :cond_3
    :try_start_0
    sget v4, Lax/ec/e;->X:I

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    if-lt v4, v6, :cond_4

    .line 66
    .line 67
    sget-object v4, Lax/dc/b0;->F0:Lax/ec/e;

    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "DFS redirect: "

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    iget-object v4, v0, Lax/dc/e;->k0:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v4}, Lax/Xb/b;->d(Ljava/lang/String;)Lax/Xb/b;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {v4, v6}, Lax/dc/k0;->s(Lax/Xb/b;I)Lax/dc/k0;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lax/dc/k0;->n()V

    .line 109
    .line 110
    .line 111
    iget-object v6, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Lax/dc/k0;->r(Lax/dc/r;)Lax/dc/i0;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v6, v0, Lax/dc/e;->l0:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v4, v6, v5}, Lax/dc/i0;->a(Ljava/lang/String;Ljava/lang/String;)Lax/dc/l0;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iput-object v4, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 124
    .line 125
    if-eq v0, v1, :cond_6

    .line 126
    .line 127
    iget-object v4, v0, Lax/dc/e;->s0:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    iget-object v6, v0, Lax/dc/e;->r0:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_2
    instance-of v6, v4, Lax/dc/a0;

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    check-cast v4, Lax/dc/a0;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    new-instance v6, Lax/dc/a0;

    .line 145
    .line 146
    iget-object v7, v0, Lax/dc/e;->k0:Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v6, v7, v4}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    move-object v4, v6

    .line 152
    :goto_3
    iget-object v0, v0, Lax/dc/e;->q0:Lax/dc/e;

    .line 153
    .line 154
    if-ne v0, v1, :cond_3

    .line 155
    .line 156
    move-object v3, v4

    .line 157
    :cond_6
    :goto_4
    if-nez v3, :cond_d

    .line 158
    .line 159
    sget v1, Lax/ec/e;->X:I

    .line 160
    .line 161
    const/4 v3, 0x3

    .line 162
    if-lt v1, v3, :cond_7

    .line 163
    .line 164
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    iput-object v0, p0, Lax/dc/b0;->r0:Lax/dc/e;

    .line 170
    .line 171
    iget v1, v0, Lax/dc/e;->Y:I

    .line 172
    .line 173
    if-gez v1, :cond_8

    .line 174
    .line 175
    iput v2, v0, Lax/dc/e;->Y:I

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    iget-object v2, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-le v1, v2, :cond_9

    .line 185
    .line 186
    iget-object v1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, v0, Lax/dc/e;->Y:I

    .line 193
    .line 194
    :cond_9
    :goto_5
    iget-object v1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 195
    .line 196
    iget v2, v0, Lax/dc/e;->Y:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v2, ""

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const-string v4, "\\"

    .line 209
    .line 210
    if-eqz v3, :cond_a

    .line 211
    .line 212
    move-object v1, v4

    .line 213
    :cond_a
    iget-object v3, v0, Lax/dc/e;->n0:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-nez v2, :cond_b

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lax/dc/e;->n0:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :cond_b
    iput-object v1, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz p1, :cond_c

    .line 244
    .line 245
    iget-object v0, p1, Lax/dc/s;->C0:Ljava/lang/String;

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_c

    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :cond_c
    if-eqz p1, :cond_11

    .line 277
    .line 278
    iput-object v1, p1, Lax/dc/s;->C0:Ljava/lang/String;

    .line 279
    .line 280
    iget v0, p1, Lax/dc/s;->o0:I

    .line 281
    .line 282
    or-int/lit16 v0, v0, 0x1000

    .line 283
    .line 284
    iput v0, p1, Lax/dc/s;->o0:I

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_d
    throw v3

    .line 288
    :cond_e
    iget-object v1, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 289
    .line 290
    iget-boolean v1, v1, Lax/dc/l0;->h:Z

    .line 291
    .line 292
    if-eqz v1, :cond_10

    .line 293
    .line 294
    if-nez v0, :cond_10

    .line 295
    .line 296
    instance-of v0, p1, Lax/dc/A;

    .line 297
    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_f
    new-instance p1, Lax/dc/a0;

    .line 302
    .line 303
    const v0, -0x3ffffddb    # -2.000131f

    .line 304
    .line 305
    .line 306
    invoke-direct {p1, v0, v2}, Lax/dc/a0;-><init>(IZ)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_10
    :goto_6
    if-eqz p1, :cond_11

    .line 311
    .line 312
    iget v0, p1, Lax/dc/s;->o0:I

    .line 313
    .line 314
    and-int/lit16 v0, v0, -0x1001

    .line 315
    .line 316
    iput v0, p1, Lax/dc/s;->o0:I

    .line 317
    .line 318
    :cond_11
    :goto_7
    return-void
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method

.method Y(Lax/dc/s;Lax/dc/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lax/dc/b0;->P(Lax/dc/s;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lax/dc/b0;->c0(Lax/dc/s;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lax/dc/b0;->X(Lax/dc/s;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lax/dc/l0;->b(Lax/dc/s;Lax/dc/s;)V
    :try_end_0
    .catch Lax/dc/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    iget-boolean v1, v0, Lax/dc/e;->o0:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lax/dc/s;->s()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    throw v0
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
.end method

.method public Z(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    and-int/lit16 v3, p1, 0x30a7

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v7}, Lax/dc/b0;->b0(IJJ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Lax/dc/a0;

    .line 24
    .line 25
    const-string v0, "Invalid operation for workgroups, servers, or shares"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method public a0(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move-wide v6, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Lax/dc/b0;->b0(IJJ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Lax/dc/a0;

    .line 22
    .line 23
    const-string p2, "Invalid operation for workgroups, servers, or shares"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method b0(IJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lax/dc/b0;->k0:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v2, 0x40

    .line 14
    .line 15
    :goto_0
    const/16 v3, 0x100

    .line 16
    .line 17
    invoke-virtual {p0, v1, v3, v0, v2}, Lax/dc/b0;->R(IIII)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    new-instance v4, Lax/dc/v0;

    .line 22
    .line 23
    or-int v6, p1, v0

    .line 24
    .line 25
    move-wide v7, p2

    .line 26
    move-wide v9, p4

    .line 27
    invoke-direct/range {v4 .. v10}, Lax/dc/v0;-><init>(IIJJ)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lax/dc/w0;

    .line 31
    .line 32
    invoke-direct {p1}, Lax/dc/w0;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 p1, 0x0

    .line 39
    .line 40
    invoke-virtual {p0, v5, p1, p2}, Lax/dc/b0;->e(IJ)V

    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lax/dc/b0;->l0:J

    .line 44
    .line 45
    return-void
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
.end method

.method public c()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lax/dc/b0;->k0:I

    .line 18
    .line 19
    and-int/2addr v0, v2

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method c0(Lax/dc/s;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-byte v0, p1, Lax/dc/s;->Y:B

    .line 4
    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    const-string v2, "A:"

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x32

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, p1

    .line 17
    check-cast v0, Lax/dc/P;

    .line 18
    .line 19
    iget-byte v0, v0, Lax/dc/P;->d1:B

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    iput-object v2, p0, Lax/dc/b0;->z0:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lax/dc/s;->C0:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lax/dc/b0;->A0:Ljava/lang/String;

    .line 34
    .line 35
    return-void
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 8
    .line 9
    iget-object v1, v0, Lax/dc/l0;->f:Lax/dc/i0;

    .line 10
    .line 11
    iget-object v1, v1, Lax/dc/i0;->h:Lax/dc/k0;

    .line 12
    .line 13
    iget-object v1, v1, Lax/dc/k0;->J0:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lax/dc/l0;->d(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->F()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lax/dc/b0;->x()Lax/Xb/b;

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->k()V
    :try_end_0
    .catch Lax/dc/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {p0}, Lax/dc/b0;->y()Lax/Xb/b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sget v1, Lax/ec/e;->X:I

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    if-lt v1, v2, :cond_2

    .line 49
    .line 50
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    throw v0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    throw v0
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lax/dc/b0;->f(J)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public d0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, -0x2

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lax/dc/b0;->Z(I)V

    .line 8
    .line 9
    .line 10
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method e(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    sget v0, Lax/ec/e;->X:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "close: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Lax/dc/w;

    .line 29
    .line 30
    invoke-direct {v0, p1, p2, p3}, Lax/dc/w;-><init>(IJ)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lax/dc/b0;->a()Lax/dc/v;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, v0, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 38
    .line 39
    .line 40
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lax/dc/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lax/dc/b0;

    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lax/dc/b0;->S(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p1, Lax/dc/b0;->q:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lax/Xb/b;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p1

    .line 58
    :catch_0
    invoke-virtual {p0}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    return p1
    .line 73
    .line 74
.end method

.method f(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lax/dc/b0;->v0:I

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lax/dc/b0;->e(IJ)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lax/dc/b0;->x0:Z

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
.end method

.method g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    const-string v0, "Failed to connect to server"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Lax/dc/a0;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v2

    .line 14
    :catch_1
    move-exception v0

    .line 15
    throw v0

    .line 16
    :catch_2
    move-exception v1

    .line 17
    new-instance v2, Lax/dc/a0;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v2
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public getContentLength()I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->L()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v2

    .line 11
    long-to-int v1, v0

    .line 12
    return v1

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public getDate()J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    return-wide v0
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/dc/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lax/dc/d0;-><init>(Lax/dc/b0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    return-wide v0
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/dc/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lax/dc/e0;-><init>(Lax/dc/b0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x33

    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v0, v2, v1, v2}, Lax/dc/b0;->R(IIII)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lax/dc/b0;->e(IJ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lax/dc/a0;

    .line 28
    .line 29
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public hashCode()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lax/Xb/b;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {p0}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    return v0
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lax/dc/b0;->u0:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lax/dc/b0;->j(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method j(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_6

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, p0, Lax/dc/b0;->l0:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    cmp-long v8, v2, v4

    .line 22
    .line 23
    if-lez v8, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x11

    .line 26
    .line 27
    iput v2, p0, Lax/dc/b0;->k0:I

    .line 28
    .line 29
    iput-wide v6, p0, Lax/dc/b0;->Y:J

    .line 30
    .line 31
    iput-wide v6, p0, Lax/dc/b0;->Z:J

    .line 32
    .line 33
    iput-boolean v0, p0, Lax/dc/b0;->o0:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0x101

    .line 40
    .line 41
    invoke-virtual {p0, v2, v3}, Lax/dc/b0;->V(Ljava/lang/String;I)Lax/dc/j;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Lax/dc/j;->a()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, p0, Lax/dc/b0;->k0:I

    .line 50
    .line 51
    invoke-interface {v2}, Lax/dc/j;->b()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, p0, Lax/dc/b0;->Y:J

    .line 56
    .line 57
    invoke-interface {v2}, Lax/dc/j;->c()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, p0, Lax/dc/b0;->Z:J

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    sget-wide v4, Lax/dc/b0;->G0:J

    .line 68
    .line 69
    add-long/2addr v2, v4

    .line 70
    iput-wide v2, p0, Lax/dc/b0;->l0:J

    .line 71
    .line 72
    iput-boolean v1, p0, Lax/dc/b0;->o0:Z

    .line 73
    .line 74
    :cond_0
    iget v2, p0, Lax/dc/b0;->k0:I

    .line 75
    .line 76
    and-int/2addr v1, v2

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lax/dc/b0;->d0()V

    .line 80
    .line 81
    .line 82
    :cond_1
    sget v1, Lax/ec/e;->X:I

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    if-lt v1, v2, :cond_2

    .line 86
    .line 87
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "delete: "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget v1, p0, Lax/dc/b0;->k0:I

    .line 110
    .line 111
    and-int/lit8 v1, v1, 0x10

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    :try_start_0
    const-string v1, "*"

    .line 116
    .line 117
    const/16 v2, 0x16

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0, v1, v2, v3, v3}, Lax/dc/b0;->N(Ljava/lang/String;ILax/dc/f0;Lax/dc/c0;)[Lax/dc/b0;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_0
    array-length v2, v1

    .line 125
    if-ge v0, v2, :cond_3

    .line 126
    .line 127
    aget-object v2, v1, v0

    .line 128
    .line 129
    invoke-virtual {v2}, Lax/dc/b0;->i()V
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Lax/dc/a0;->c()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const v2, -0x3ffffff1    # -2.0000036f

    .line 141
    .line 142
    .line 143
    if-ne v1, v2, :cond_4

    .line 144
    .line 145
    :cond_3
    new-instance v0, Lax/dc/z;

    .line 146
    .line 147
    invoke-direct {v0, p1}, Lax/dc/z;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lax/dc/b0;->a()Lax/dc/v;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, v0, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    throw v0

    .line 159
    :cond_5
    new-instance v0, Lax/dc/y;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Lax/dc/y;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0}, Lax/dc/b0;->a()Lax/dc/v;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, v0, p1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iput-wide v6, p0, Lax/dc/b0;->n0:J

    .line 172
    .line 173
    iput-wide v6, p0, Lax/dc/b0;->l0:J

    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    new-instance p1, Lax/dc/a0;

    .line 177
    .line 178
    const-string v0, "Invalid operation for workgroups, servers, or shares"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
.end method

.method k()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lax/dc/l0;->f:Lax/dc/i0;

    .line 11
    .line 12
    iget-object v1, v1, Lax/dc/i0;->h:Lax/dc/k0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lax/dc/k0;->s(Lax/Xb/b;I)Lax/dc/k0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lax/dc/k0;->r(Lax/dc/r;)Lax/dc/i0;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v4, v2}, Lax/dc/i0;->a(Ljava/lang/String;Ljava/lang/String;)Lax/dc/l0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lax/dc/b0;->B()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 44
    .line 45
    sget-object v5, Lax/dc/b0;->I0:Lax/dc/d;

    .line 46
    .line 47
    iget-object v6, v4, Lax/dc/l0;->c:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v7, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 50
    .line 51
    invoke-virtual {v5, v3, v6, v2, v7}, Lax/dc/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/dc/r;)Lax/dc/e;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x1

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    :goto_1
    iput-boolean v5, v4, Lax/dc/l0;->h:Z

    .line 63
    .line 64
    iget-object v4, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 65
    .line 66
    iget-boolean v5, v4, Lax/dc/l0;->h:Z

    .line 67
    .line 68
    const/4 v8, 0x2

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    iput v8, v4, Lax/dc/l0;->a:I

    .line 72
    .line 73
    :cond_2
    :try_start_0
    sget v4, Lax/ec/e;->X:I

    .line 74
    .line 75
    const/4 v5, 0x3

    .line 76
    if-lt v4, v5, :cond_3

    .line 77
    .line 78
    sget-object v4, Lax/dc/b0;->F0:Lax/ec/e;

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v9, "doConnect: "

    .line 86
    .line 87
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v2}, Lax/dc/l0;->c(Lax/dc/s;Lax/dc/s;)V
    :try_end_0
    .catch Lax/dc/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_3
    iget-object v4, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    sget-object v0, Lax/dc/r;->v0:Lax/dc/r;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lax/dc/k0;->r(Lax/dc/r;)Lax/dc/i0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2, v2}, Lax/dc/i0;->a(Ljava/lang/String;Ljava/lang/String;)Lax/dc/l0;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 124
    .line 125
    invoke-virtual {v0, v2, v2}, Lax/dc/l0;->c(Lax/dc/s;Lax/dc/s;)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v4, v0}, Lax/dc/p;->a(Ljava/lang/String;Lax/dc/u;)Lax/dc/r;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_7

    .line 140
    .line 141
    iput-object v4, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Lax/dc/k0;->r(Lax/dc/r;)Lax/dc/i0;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lax/dc/i0;->a(Ljava/lang/String;Ljava/lang/String;)Lax/dc/l0;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 154
    .line 155
    sget-object v1, Lax/dc/b0;->I0:Lax/dc/d;

    .line 156
    .line 157
    iget-object v4, v0, Lax/dc/l0;->c:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v5, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 160
    .line 161
    invoke-virtual {v1, v3, v4, v2, v5}, Lax/dc/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/dc/r;)Lax/dc/e;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    const/4 v6, 0x1

    .line 168
    :cond_5
    iput-boolean v6, v0, Lax/dc/l0;->h:Z

    .line 169
    .line 170
    iget-object v0, p0, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 171
    .line 172
    iget-boolean v1, v0, Lax/dc/l0;->h:Z

    .line 173
    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    iput v8, v0, Lax/dc/l0;->a:I

    .line 177
    .line 178
    :cond_6
    invoke-virtual {v0, v2, v2}, Lax/dc/l0;->c(Lax/dc/s;Lax/dc/s;)V

    .line 179
    .line 180
    .line 181
    :goto_4
    return-void

    .line 182
    :cond_7
    sget v1, Lax/ec/e;->X:I

    .line 183
    .line 184
    if-lt v1, v7, :cond_8

    .line 185
    .line 186
    invoke-virtual {p0}, Lax/dc/b0;->E()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_8

    .line 191
    .line 192
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    throw v0
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method l()[Lax/dc/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ncacn_np:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lax/Xb/b;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "[\\PIPE\\netdfs]"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lax/Yb/f;->e(Ljava/lang/String;Lax/dc/r;)Lax/Yb/f;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x4

    .line 38
    :try_start_0
    new-instance v2, Lax/Zb/a;

    .line 39
    .line 40
    invoke-virtual {p0}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, v3}, Lax/Zb/a;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lax/Yb/f;->g(Lax/Yb/g;)V

    .line 48
    .line 49
    .line 50
    iget v3, v2, Lax/Zb/d$f;->h:I

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lax/Zb/a;->j()[Lax/dc/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {v0}, Lax/Yb/f;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget v3, Lax/ec/e;->X:I

    .line 64
    .line 65
    if-lt v3, v1, :cond_0

    .line 66
    .line 67
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-object v2

    .line 73
    :catchall_0
    move-exception v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :try_start_2
    new-instance v3, Lax/dc/a0;

    .line 76
    .line 77
    iget v2, v2, Lax/Zb/d$f;->h:I

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    invoke-direct {v3, v2, v4}, Lax/dc/a0;-><init>(IZ)V

    .line 81
    .line 82
    .line 83
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lax/Yb/f;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    sget v3, Lax/ec/e;->X:I

    .line 90
    .line 91
    if-lt v3, v1, :cond_2

    .line 92
    .line 93
    sget-object v1, Lax/dc/b0;->F0:Lax/ec/e;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    throw v2
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method m(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    if-eqz p6, :cond_1

    .line 2
    .line 3
    instance-of v0, p6, Lax/dc/g;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object p4, p6

    .line 8
    check-cast p4, Lax/dc/g;

    .line 9
    .line 10
    iget-object v0, p4, Lax/dc/g;->a:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move-object p3, v0

    .line 15
    :cond_0
    iget p4, p4, Lax/dc/g;->b:I

    .line 16
    .line 17
    :cond_1
    move-object v4, p3

    .line 18
    move v5, p4

    .line 19
    :try_start_0
    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    :try_start_1
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 p4, 0x2

    .line 36
    if-ne p3, p4, :cond_3

    .line 37
    .line 38
    :cond_2
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    move v3, p2

    .line 41
    move-object v6, p5

    .line 42
    move-object v7, p6

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object p3, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 45
    .line 46
    if-nez p3, :cond_4

    .line 47
    .line 48
    move-object v1, p0

    .line 49
    move-object v2, p1

    .line 50
    move v3, p2

    .line 51
    move-object v6, p5

    .line 52
    move-object v7, p6

    .line 53
    invoke-virtual/range {v1 .. v7}, Lax/dc/b0;->r(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object p1, v0

    .line 59
    move-object v1, p0

    .line 60
    goto :goto_3

    .line 61
    :catch_1
    move-exception v0

    .line 62
    move-object p1, v0

    .line 63
    move-object v1, p0

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    move-object v1, p0

    .line 66
    move-object v2, p1

    .line 67
    move v3, p2

    .line 68
    move-object v6, p5

    .line 69
    move-object v7, p6

    .line 70
    invoke-virtual/range {v1 .. v7}, Lax/dc/b0;->n(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_0
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lax/dc/b0;->p(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_2
    move-exception v0

    .line 79
    :goto_1
    move-object p1, v0

    .line 80
    goto :goto_3

    .line 81
    :catch_3
    move-exception v0

    .line 82
    :goto_2
    move-object p1, v0

    .line 83
    goto :goto_4

    .line 84
    :catch_4
    move-exception v0

    .line 85
    move-object v1, p0

    .line 86
    goto :goto_1

    .line 87
    :catch_5
    move-exception v0

    .line 88
    move-object v1, p0

    .line 89
    goto :goto_2

    .line 90
    :goto_3
    new-instance p2, Lax/dc/a0;

    .line 91
    .line 92
    iget-object p3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-direct {p2, p3, p1}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p2

    .line 102
    :goto_4
    new-instance p2, Lax/dc/a0;

    .line 103
    .line 104
    iget-object p3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-direct {p2, p3, p1}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p2
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
.end method

.method n(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p5

    .line 6
    .line 7
    move-object/from16 v13, p6

    .line 8
    .line 9
    invoke-virtual {v1}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x2f

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    if-ne v3, v2, :cond_b

    .line 32
    .line 33
    new-instance v2, Lax/dc/m0;

    .line 34
    .line 35
    move-object/from16 v3, p3

    .line 36
    .line 37
    move/from16 v4, p4

    .line 38
    .line 39
    invoke-direct {v2, v0, v3, v4}, Lax/dc/m0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    new-instance v14, Lax/dc/n0;

    .line 43
    .line 44
    invoke-direct {v14}, Lax/dc/n0;-><init>()V

    .line 45
    .line 46
    .line 47
    sget v0, Lax/ec/e;->X:I

    .line 48
    .line 49
    const/4 v15, 0x3

    .line 50
    if-lt v0, v15, :cond_0

    .line 51
    .line 52
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "doFindFirstNext: "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v4, v2, Lax/dc/s;->C0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {v1, v2, v14}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 77
    .line 78
    .line 79
    iget v0, v14, Lax/dc/n0;->d1:I

    .line 80
    .line 81
    new-instance v2, Lax/dc/o0;

    .line 82
    .line 83
    iget v3, v14, Lax/dc/n0;->j1:I

    .line 84
    .line 85
    iget-object v4, v14, Lax/dc/n0;->i1:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v2, v0, v3, v4}, Lax/dc/o0;-><init>(IILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    iput-byte v3, v14, Lax/dc/Q;->W0:B

    .line 92
    .line 93
    :goto_0
    const/4 v3, 0x0

    .line 94
    :goto_1
    iget v4, v14, Lax/dc/Q;->b1:I

    .line 95
    .line 96
    if-ge v3, v4, :cond_7

    .line 97
    .line 98
    iget-object v4, v14, Lax/dc/Q;->c1:[Lax/dc/h;

    .line 99
    .line 100
    aget-object v4, v4, v3

    .line 101
    .line 102
    move-object v5, v2

    .line 103
    invoke-interface {v4}, Lax/dc/h;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-ge v6, v15, :cond_3

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    sget v7, Lax/dc/b0;->D0:I

    .line 118
    .line 119
    if-eq v6, v7, :cond_1

    .line 120
    .line 121
    sget v7, Lax/dc/b0;->E0:I

    .line 122
    .line 123
    if-ne v6, v7, :cond_3

    .line 124
    .line 125
    :cond_1
    const-string v6, "."

    .line 126
    .line 127
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_2

    .line 132
    .line 133
    const-string v6, ".."

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    :cond_2
    :goto_2
    move v15, v0

    .line 142
    move/from16 v18, v3

    .line 143
    .line 144
    move-object v12, v5

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    if-eqz v12, :cond_4

    .line 147
    .line 148
    invoke-interface {v12, v1, v2}, Lax/dc/f0;->a(Lax/dc/b0;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-lez v6, :cond_2

    .line 160
    .line 161
    move v6, v0

    .line 162
    new-instance v0, Lax/dc/b0;

    .line 163
    .line 164
    move-object v7, v4

    .line 165
    invoke-interface {v7}, Lax/dc/h;->a()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    move-object v9, v5

    .line 170
    move v8, v6

    .line 171
    invoke-interface {v7}, Lax/dc/h;->b()J

    .line 172
    .line 173
    .line 174
    move-result-wide v5

    .line 175
    move-object/from16 v16, v7

    .line 176
    .line 177
    move v10, v8

    .line 178
    invoke-interface/range {v16 .. v16}, Lax/dc/h;->g()J

    .line 179
    .line 180
    .line 181
    move-result-wide v7

    .line 182
    invoke-interface/range {v16 .. v16}, Lax/dc/h;->length()J

    .line 183
    .line 184
    .line 185
    move-result-wide v16

    .line 186
    move/from16 v18, v3

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    move-object v12, v9

    .line 190
    move v15, v10

    .line 191
    move-wide/from16 v9, v16

    .line 192
    .line 193
    invoke-direct/range {v0 .. v10}, Lax/dc/b0;-><init>(Lax/dc/b0;Ljava/lang/String;IIJJJ)V

    .line 194
    .line 195
    .line 196
    if-eqz v13, :cond_5

    .line 197
    .line 198
    invoke-interface {v13, v0}, Lax/dc/c0;->a(Lax/dc/b0;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_5

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_5
    if-eqz p2, :cond_6

    .line 206
    .line 207
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :goto_3
    add-int/lit8 v3, v18, 0x1

    .line 215
    .line 216
    move-object v2, v12

    .line 217
    move v0, v15

    .line 218
    const/4 v15, 0x3

    .line 219
    move-object/from16 v12, p5

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    move v15, v0

    .line 223
    move-object v12, v2

    .line 224
    iget-boolean v0, v14, Lax/dc/n0;->e1:Z

    .line 225
    .line 226
    if-nez v0, :cond_9

    .line 227
    .line 228
    if-nez v4, :cond_8

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_8
    iget v0, v14, Lax/dc/n0;->j1:I

    .line 232
    .line 233
    iget-object v2, v14, Lax/dc/n0;->i1:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v12, v0, v2}, Lax/dc/P;->E(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14}, Lax/dc/Q;->s()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v12, v14}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 242
    .line 243
    .line 244
    move-object v2, v12

    .line 245
    move v0, v15

    .line 246
    const/4 v15, 0x3

    .line 247
    move-object/from16 v12, p5

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_9
    :goto_4
    :try_start_0
    new-instance v0, Lax/dc/A;

    .line 252
    .line 253
    invoke-direct {v0, v15}, Lax/dc/A;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v1}, Lax/dc/b0;->a()Lax/dc/v;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v1, v0, v2}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    sget v2, Lax/ec/e;->X:I

    .line 266
    .line 267
    const/4 v3, 0x4

    .line 268
    if-lt v2, v3, :cond_a

    .line 269
    .line 270
    sget-object v2, Lax/dc/b0;->F0:Lax/ec/e;

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 273
    .line 274
    .line 275
    :cond_a
    return-void

    .line 276
    :cond_b
    new-instance v0, Lax/dc/a0;

    .line 277
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v3, " directory must end with \'/\'"

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-direct {v0, v2}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
.end method

.method o()[Lax/dc/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/Zb/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lax/Zb/b;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "ncacn_np:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lax/dc/b0;->t()Lax/Xb/b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lax/Xb/b;->f()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "[\\PIPE\\srvsvc]"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lax/Yb/f;->e(Ljava/lang/String;Lax/dc/r;)Lax/Yb/f;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x4

    .line 49
    :try_start_0
    invoke-virtual {v1, v0}, Lax/Yb/f;->g(Lax/Yb/g;)V

    .line 50
    .line 51
    .line 52
    iget v3, v0, Lax/Zb/f$a;->h:I

    .line 53
    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lax/Zb/b;->j()[Lax/dc/h;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v1}, Lax/Yb/f;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    sget v3, Lax/ec/e;->X:I

    .line 66
    .line 67
    if-lt v3, v2, :cond_0

    .line 68
    .line 69
    sget-object v2, Lax/dc/b0;->F0:Lax/ec/e;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    :try_start_2
    new-instance v3, Lax/dc/a0;

    .line 78
    .line 79
    iget v0, v0, Lax/Zb/f$a;->h:I

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-direct {v3, v0, v4}, Lax/dc/a0;-><init>(IZ)V

    .line 83
    .line 84
    .line 85
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lax/Yb/f;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v1

    .line 91
    sget v3, Lax/ec/e;->X:I

    .line 92
    .line 93
    if-lt v3, v2, :cond_2

    .line 94
    .line 95
    sget-object v2, Lax/dc/b0;->F0:Lax/ec/e;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    throw v0
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method p(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p5

    .line 6
    .line 7
    move-object/from16 v13, p6

    .line 8
    .line 9
    iget-object v0, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lax/dc/b0;->C()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    const/4 v15, 0x2

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lax/dc/b0;->g()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lax/dc/k;

    .line 34
    .line 35
    iget-object v2, v1, Lax/dc/b0;->t0:Lax/dc/l0;

    .line 36
    .line 37
    iget-object v2, v2, Lax/dc/l0;->f:Lax/dc/i0;

    .line 38
    .line 39
    iget-object v2, v2, Lax/dc/i0;->h:Lax/dc/k0;

    .line 40
    .line 41
    iget-object v2, v2, Lax/dc/k0;->B0:Lax/dc/k0$a;

    .line 42
    .line 43
    iget-object v2, v2, Lax/dc/k0$a;->e:Ljava/lang/String;

    .line 44
    .line 45
    const/high16 v3, -0x80000000

    .line 46
    .line 47
    invoke-direct {v0, v2, v3}, Lax/dc/k;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lax/dc/l;

    .line 51
    .line 52
    invoke-direct {v2}, Lax/dc/l;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-ne v0, v15, :cond_d

    .line 57
    .line 58
    new-instance v0, Lax/dc/k;

    .line 59
    .line 60
    iget-object v2, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, -0x1

    .line 67
    invoke-direct {v0, v2, v3}, Lax/dc/k;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lax/dc/l;

    .line 71
    .line 72
    invoke-direct {v2}, Lax/dc/l;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v1, v0, v2}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 76
    .line 77
    .line 78
    iget v3, v2, Lax/dc/Q;->a1:I

    .line 79
    .line 80
    const/16 v4, 0xea

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    if-ne v3, v4, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    new-instance v0, Lax/dc/a0;

    .line 89
    .line 90
    iget v2, v2, Lax/dc/Q;->a1:I

    .line 91
    .line 92
    invoke-direct {v0, v2, v5}, Lax/dc/a0;-><init>(IZ)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_3
    :goto_2
    if-ne v3, v4, :cond_4

    .line 97
    .line 98
    const/16 v16, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/16 v16, 0x0

    .line 102
    .line 103
    :goto_3
    iget v3, v2, Lax/dc/Q;->b1:I

    .line 104
    .line 105
    if-eqz v16, :cond_5

    .line 106
    .line 107
    sub-int/2addr v3, v5

    .line 108
    :cond_5
    const/4 v4, 0x0

    .line 109
    :goto_4
    if-ge v4, v3, :cond_a

    .line 110
    .line 111
    iget-object v5, v2, Lax/dc/Q;->c1:[Lax/dc/h;

    .line 112
    .line 113
    aget-object v5, v5, v4

    .line 114
    .line 115
    move-object v6, v2

    .line 116
    invoke-interface {v5}, Lax/dc/h;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v12, :cond_7

    .line 121
    .line 122
    invoke-interface {v12, v1, v2}, Lax/dc/f0;->a(Lax/dc/b0;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_7

    .line 127
    .line 128
    :cond_6
    move-object v14, v0

    .line 129
    move/from16 v20, v3

    .line 130
    .line 131
    move/from16 v18, v4

    .line 132
    .line 133
    move-object/from16 v21, v6

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-lez v7, :cond_6

    .line 141
    .line 142
    move-object v7, v0

    .line 143
    new-instance v0, Lax/dc/b0;

    .line 144
    .line 145
    invoke-interface {v5}, Lax/dc/h;->getType()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    move-object v9, v7

    .line 150
    const-wide/16 v7, 0x0

    .line 151
    .line 152
    move-object/from16 v17, v9

    .line 153
    .line 154
    const-wide/16 v9, 0x0

    .line 155
    .line 156
    move/from16 v18, v4

    .line 157
    .line 158
    const/16 v4, 0x11

    .line 159
    .line 160
    move/from16 v20, v3

    .line 161
    .line 162
    move v3, v5

    .line 163
    move-object/from16 v19, v6

    .line 164
    .line 165
    const-wide/16 v5, 0x0

    .line 166
    .line 167
    move-object/from16 v14, v17

    .line 168
    .line 169
    move-object/from16 v21, v19

    .line 170
    .line 171
    invoke-direct/range {v0 .. v10}, Lax/dc/b0;-><init>(Lax/dc/b0;Ljava/lang/String;IIJJJ)V

    .line 172
    .line 173
    .line 174
    if-eqz v13, :cond_8

    .line 175
    .line 176
    invoke-interface {v13, v0}, Lax/dc/c0;->a(Lax/dc/b0;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    if-eqz p2, :cond_9

    .line 184
    .line 185
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :goto_5
    add-int/lit8 v4, v18, 0x1

    .line 193
    .line 194
    move-object v0, v14

    .line 195
    move/from16 v3, v20

    .line 196
    .line 197
    move-object/from16 v2, v21

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_a
    move-object v14, v0

    .line 201
    move-object/from16 v21, v2

    .line 202
    .line 203
    invoke-virtual {v1}, Lax/dc/b0;->C()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eq v0, v15, :cond_b

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_b
    const/16 v0, -0x29

    .line 211
    .line 212
    iput-byte v0, v14, Lax/dc/P;->d1:B

    .line 213
    .line 214
    move-object/from16 v6, v21

    .line 215
    .line 216
    iget-object v0, v6, Lax/dc/l;->f1:Ljava/lang/String;

    .line 217
    .line 218
    const/4 v2, 0x0

    .line 219
    invoke-virtual {v14, v2, v0}, Lax/dc/P;->E(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Lax/dc/Q;->s()V

    .line 223
    .line 224
    .line 225
    if-nez v16, :cond_c

    .line 226
    .line 227
    :goto_6
    return-void

    .line 228
    :cond_c
    move-object v2, v6

    .line 229
    move-object v0, v14

    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_d
    new-instance v0, Lax/dc/a0;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v3, "The requested list operations is invalid: "

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-direct {v0, v2}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v0
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
.end method

.method q()[Lax/dc/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/dc/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lax/dc/m;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lax/dc/n;

    .line 7
    .line 8
    invoke-direct {v1}, Lax/dc/n;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lax/dc/b0;->Y(Lax/dc/s;Lax/dc/s;)V

    .line 12
    .line 13
    .line 14
    iget v0, v1, Lax/dc/Q;->a1:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Lax/dc/Q;->c1:[Lax/dc/h;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lax/dc/a0;

    .line 22
    .line 23
    iget v1, v1, Lax/dc/Q;->a1:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v0, v1, v2}, Lax/dc/a0;-><init>(IZ)V

    .line 27
    .line 28
    .line 29
    throw v0
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method r(Ljava/util/ArrayList;ZLjava/lang/String;ILax/dc/f0;Lax/dc/c0;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    move-object/from16 v11, p1

    .line 2
    .line 3
    move-object/from16 v12, p5

    .line 4
    .line 5
    move-object/from16 v13, p6

    .line 6
    .line 7
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0x2f

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    if-ne v2, v0, :cond_e

    .line 26
    .line 27
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x4

    .line 32
    if-ne v0, v2, :cond_d

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lax/dc/b0;->I0:Lax/dc/d;

    .line 40
    .line 41
    invoke-virtual {p0}, Lax/dc/b0;->A()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v5, p0, Lax/dc/b0;->s0:Lax/dc/r;

    .line 46
    .line 47
    invoke-virtual {v0, v4, v5}, Lax/dc/d;->e(Ljava/lang/String;Lax/dc/r;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lax/dc/b0;->l()[Lax/dc/h;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_0
    array-length v6, v0

    .line 60
    if-ge v5, v6, :cond_1

    .line 61
    .line 62
    aget-object v6, v0, v5

    .line 63
    .line 64
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    invoke-virtual {v3, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_2
    sget v5, Lax/ec/e;->X:I

    .line 80
    .line 81
    if-lt v5, v2, :cond_1

    .line 82
    .line 83
    sget-object v2, Lax/dc/b0;->F0:Lax/ec/e;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Lax/dc/b0;->x()Lax/Xb/b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_3
    if-eqz v0, :cond_5

    .line 94
    .line 95
    const/4 v5, 0x3

    .line 96
    :try_start_1
    invoke-virtual {p0}, Lax/dc/b0;->k()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-virtual {p0}, Lax/dc/b0;->o()[Lax/dc/h;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    goto :goto_5

    .line 104
    :catch_1
    move-exception v0

    .line 105
    :try_start_3
    sget v6, Lax/ec/e;->X:I

    .line 106
    .line 107
    if-lt v6, v5, :cond_2

    .line 108
    .line 109
    sget-object v6, Lax/dc/b0;->F0:Lax/ec/e;

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_2
    move-exception v0

    .line 116
    move-object v2, v0

    .line 117
    goto :goto_7

    .line 118
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lax/dc/b0;->q()[Lax/dc/h;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_5
    const/4 v6, 0x0

    .line 123
    :goto_6
    array-length v7, v0

    .line 124
    if-ge v6, v7, :cond_5

    .line 125
    .line 126
    aget-object v7, v0, v6

    .line 127
    .line 128
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-nez v8, :cond_3

    .line 133
    .line 134
    invoke-virtual {v3, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    .line 136
    .line 137
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :goto_7
    sget v0, Lax/ec/e;->X:I

    .line 141
    .line 142
    if-lt v0, v5, :cond_4

    .line 143
    .line 144
    sget-object v0, Lax/dc/b0;->F0:Lax/ec/e;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-virtual {p0}, Lax/dc/b0;->y()Lax/Xb/b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    if-eqz v2, :cond_7

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    instance-of v0, v2, Lax/dc/a0;

    .line 163
    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    new-instance v0, Lax/dc/a0;

    .line 167
    .line 168
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-direct {v0, v3, v2}, Lax/dc/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_6
    check-cast v2, Lax/dc/a0;

    .line 179
    .line 180
    throw v2

    .line 181
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    :cond_8
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_c

    .line 194
    .line 195
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lax/dc/h;

    .line 200
    .line 201
    invoke-interface {v0}, Lax/dc/h;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v12, :cond_9

    .line 206
    .line 207
    invoke-interface {v12, p0, v2}, Lax/dc/f0;->a(Lax/dc/b0;Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_9

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-lez v3, :cond_8

    .line 219
    .line 220
    move-object v3, v0

    .line 221
    new-instance v0, Lax/dc/b0;

    .line 222
    .line 223
    invoke-interface {v3}, Lax/dc/h;->getType()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    const-wide/16 v7, 0x0

    .line 228
    .line 229
    const-wide/16 v9, 0x0

    .line 230
    .line 231
    const/16 v4, 0x11

    .line 232
    .line 233
    const-wide/16 v5, 0x0

    .line 234
    .line 235
    move-object v1, p0

    .line 236
    invoke-direct/range {v0 .. v10}, Lax/dc/b0;-><init>(Lax/dc/b0;Ljava/lang/String;IIJJJ)V

    .line 237
    .line 238
    .line 239
    if-eqz v13, :cond_a

    .line 240
    .line 241
    invoke-interface {v13, v0}, Lax/dc/c0;->a(Lax/dc/b0;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_a

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_a
    if-eqz p2, :cond_b

    .line 249
    .line 250
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_b
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_c
    return-void

    .line 259
    :cond_d
    new-instance v0, Lax/dc/a0;

    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v3, "The requested list operations is invalid: "

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-direct {v0, v2}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_e
    new-instance v0, Lax/dc/a0;

    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v3, " directory must end with \'/\'"

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-direct {v0, v2}, Lax/dc/a0;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
.end method

.method public s()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lax/dc/b0;->l0:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lax/dc/b0;->o0:Z

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/16 v0, 0x11

    .line 15
    .line 16
    iput v0, p0, Lax/dc/b0;->k0:I

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lax/dc/b0;->Y:J

    .line 21
    .line 22
    iput-wide v0, p0, Lax/dc/b0;->Z:J

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lax/dc/b0;->o0:Z

    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x2

    .line 50
    if-ne v0, v2, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v1}, Lax/Xb/b;->e(Ljava/lang/String;Z)Lax/Xb/b;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lax/Xb/b;->d(Ljava/lang/String;)Lax/Xb/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lax/Xb/b;->g()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eq v0, v1, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lax/dc/b0;->X:Ljava/lang/String;

    .line 89
    .line 90
    const-string v2, "IPC$"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v2, 0x101

    .line 104
    .line 105
    invoke-virtual {p0, v0, v2}, Lax/dc/b0;->V(Ljava/lang/String;I)Lax/dc/j;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lax/dc/j;->a()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, p0, Lax/dc/b0;->k0:I

    .line 114
    .line 115
    invoke-interface {v0}, Lax/dc/j;->b()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    iput-wide v2, p0, Lax/dc/b0;->Y:J

    .line 120
    .line 121
    invoke-interface {v0}, Lax/dc/j;->c()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    iput-wide v2, p0, Lax/dc/b0;->Z:J

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lax/dc/b0;->g()V

    .line 129
    .line 130
    .line 131
    :goto_1
    iput-boolean v1, p0, Lax/dc/b0;->o0:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :goto_2
    invoke-virtual {v0}, Lax/dc/a0;->c()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sparse-switch v1, :sswitch_data_0

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :catch_1
    :goto_3
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    sget-wide v2, Lax/dc/b0;->G0:J

    .line 147
    .line 148
    add-long/2addr v0, v2

    .line 149
    iput-wide v0, p0, Lax/dc/b0;->l0:J

    .line 150
    .line 151
    iget-boolean v0, p0, Lax/dc/b0;->o0:Z

    .line 152
    .line 153
    return v0

    .line 154
    nop

    .line 155
    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method t()Lax/Xb/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lax/dc/b0;->C0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lax/dc/b0;->x()Lax/Xb/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    return-object v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public u()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lax/dc/b0;->s()Z

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lax/dc/b0;->k0:I

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0x7fff

    .line 20
    .line 21
    return v0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lax/dc/b0;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "smb://"

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lax/dc/b0;->q:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    return-object v1
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public w()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/dc/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/dc/b0;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lax/dc/b0;->w0:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_1
    :goto_0
    const/16 v0, 0x3ef

    .line 19
    .line 20
    :try_start_0
    invoke-direct {p0, v0}, Lax/dc/b0;->T(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catch Lax/dc/a0; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-wide v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Lax/dc/a0;->c()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const v3, -0x3fffffff    # -2.0000002f

    .line 31
    .line 32
    .line 33
    if-eq v1, v3, :cond_3

    .line 34
    .line 35
    const v3, -0x3ffffffd    # -2.0000007f

    .line 36
    .line 37
    .line 38
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    throw v0

    .line 42
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lax/dc/b0;->T(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method x()Lax/Xb/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lax/dc/b0;->C0:I

    .line 3
    .line 4
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string v5, "server"

    .line 26
    .line 27
    invoke-static {v3, v5}, Lax/dc/b0;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-lez v6, :cond_0

    .line 38
    .line 39
    new-array v1, v4, [Lax/Xb/b;

    .line 40
    .line 41
    iput-object v1, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 42
    .line 43
    invoke-static {v5}, Lax/Xb/b;->d(Ljava/lang/String;)Lax/Xb/b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v1, v0

    .line 48
    .line 49
    invoke-virtual {p0}, Lax/dc/b0;->y()Lax/Xb/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    const-string v5, "address"

    .line 55
    .line 56
    invoke-static {v3, v5}, Lax/dc/b0;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-lez v5, :cond_1

    .line 67
    .line 68
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-array v3, v4, [Lax/Xb/b;

    .line 77
    .line 78
    iput-object v3, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 79
    .line 80
    new-instance v4, Lax/Xb/b;

    .line 81
    .line 82
    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v4, v1}, Lax/Xb/b;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    aput-object v4, v3, v0

    .line 90
    .line 91
    invoke-virtual {p0}, Lax/dc/b0;->y()Lax/Xb/b;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    :try_start_0
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-static {v1, v4, v2}, Lax/bc/g;->n(Ljava/lang/String;ILjava/lang/String;)Lax/bc/g;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-array v2, v4, [Lax/Xb/b;

    .line 110
    .line 111
    iput-object v2, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 112
    .line 113
    invoke-virtual {v1}, Lax/bc/g;->q()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lax/Xb/b;->d(Ljava/lang/String;)Lax/Xb/b;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lax/dc/r;->o()V

    .line 126
    .line 127
    .line 128
    sget-object v1, Lax/dc/r;->s0:Ljava/lang/String;

    .line 129
    .line 130
    const-string v2, "?"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_2

    .line 137
    .line 138
    sget-object v0, Lax/dc/r;->s0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v4}, Lax/Xb/b;->c(Ljava/lang/String;Z)[Lax/Xb/b;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    throw v0

    .line 148
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    const-string v3, "/"

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    invoke-static {v1, v0}, Lax/Xb/b;->c(Ljava/lang/String;Z)[Lax/Xb/b;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    :goto_0
    invoke-static {v1, v4}, Lax/Xb/b;->c(Ljava/lang/String;Z)[Lax/Xb/b;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 175
    .line 176
    :goto_1
    invoke-virtual {p0}, Lax/dc/b0;->y()Lax/Xb/b;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
.end method

.method y()Lax/Xb/b;
    .locals 3

    .line 1
    iget v0, p0, Lax/dc/b0;->C0:I

    .line 2
    .line 3
    iget-object v1, p0, Lax/dc/b0;->B0:[Lax/Xb/b;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iput v2, p0, Lax/dc/b0;->C0:I

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return-object v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
.end method
