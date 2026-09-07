.class public Lax/c3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lax/c3/j$g;,
        Lax/c3/j$e;,
        Lax/c3/j$f;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/logging/Logger;

.field private static z:Lax/c3/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lax/U2/e$e;

.field private e:Ljava/lang/String;

.field private f:Lax/U2/e$e;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lax/U2/e$e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lax/f3/K;",
            "Lax/U2/e$e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/Boolean;

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lax/f3/K;",
            "Lax/c3/r;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lax/f3/K;",
            "Lax/c3/j$e;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;

.field private final w:Ljava/lang/Object;

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lax/f3/K;",
            "Lax/c3/j$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lax/c3/j;

    .line 2
    .line 3
    invoke-static {v0}, Lax/U2/g;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 8
    .line 9
    return-void
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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lax/c3/j;->h:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lax/c3/j;->i:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lax/c3/j;->j:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lax/c3/j;->l:Ljava/util/HashSet;

    .line 34
    .line 35
    iput-boolean v0, p0, Lax/c3/j;->o:Z

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lax/c3/j;->r:Ljava/util/HashMap;

    .line 50
    .line 51
    const-wide/16 v0, -0x1

    .line 52
    .line 53
    iput-wide v0, p0, Lax/c3/j;->s:J

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lax/c3/j;->t:Ljava/util/HashMap;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/Object;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lax/c3/j;->v:Ljava/lang/Object;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/Object;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lax/c3/j;->w:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance v0, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 89
    .line 90
    iput-object p1, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lax/c3/j;->b:Z

    .line 94
    .line 95
    return-void
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
.end method

.method private A0(Lax/f3/K;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lax/c3/j;->P0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lax/c3/j;->D0(Lax/f3/K;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private B0(Lax/f3/K;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lax/c3/j;->P0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lax/c3/j;->E0(Lax/f3/K;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private C()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lax/c3/j;->f0()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method private D0(Lax/f3/K;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/U2/e$e;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p1, Lax/U2/e$e;->f:Z

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private E0(Lax/f3/K;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/U2/e$e;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p1, Lax/U2/e$e;->j:Z

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static F()Lax/c3/j;
    .locals 2

    .line 1
    sget-object v0, Lax/c3/j;->z:Lax/c3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/alphainventor/filemanager/ApplicationReporter;->init(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "LocalManager not initialized"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lax/sb/b;->k()Lax/sb/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lax/c3/j;->z:Lax/c3/j;

    .line 27
    .line 28
    return-object v0
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
.end method

.method private H(Lax/U2/e$e;)I
    .locals 4

    .line 1
    iget-object v0, p1, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p1, Lax/U2/e$e;->a:Lax/U2/f;

    .line 7
    .line 8
    sget-object v2, Lax/U2/f;->t0:Lax/U2/f;

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "no uuid : "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lax/U2/e$e;->a:Lax/U2/f;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lax/z3/b;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return v1

    .line 35
    :cond_1
    iget-object v0, p1, Lax/U2/e$e;->a:Lax/U2/f;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lax/f3/K;->g(Lax/U2/f;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    iget-object v0, p1, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p1, Lax/U2/e$e;->i:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ":"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, p0, Lax/c3/j;->i:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const v1, 0x7fffff9b

    .line 89
    .line 90
    .line 91
    if-le v0, v1, :cond_3

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x64

    .line 94
    .line 95
    :cond_3
    iget-object v2, p0, Lax/c3/j;->i:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-le v0, v1, :cond_4

    .line 116
    .line 117
    add-int/lit8 v0, v0, -0x64

    .line 118
    .line 119
    :cond_4
    :goto_0
    iget-object v1, p0, Lax/c3/j;->i:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v0, p0, Lax/c3/j;->i:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    return p1
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
.end method

.method private H0(Lax/f3/K;)V
    .locals 2

    .line 1
    sget-object v0, Lax/c3/j$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lax/z3/b;->f()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Lax/c3/j;->G0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-direct {p0, p1}, Lax/c3/j;->I0(Lax/f3/K;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    invoke-direct {p0}, Lax/c3/j;->R0()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    invoke-direct {p0}, Lax/c3/j;->P0()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    invoke-direct {p0}, Lax/c3/j;->P0()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_5
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_6
    invoke-direct {p0}, Lax/c3/j;->O0()V

    .line 45
    .line 46
    .line 47
    :pswitch_7
    invoke-direct {p0}, Lax/c3/j;->J0()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_8
    invoke-direct {p0}, Lax/c3/j;->M0()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method private I(Lax/U2/e$e;)Lax/f3/K;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lax/c3/j;->H(Lax/U2/e$e;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p1, p1, Lax/U2/e$e;->a:Lax/U2/f;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
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
.end method

.method private I0(Lax/f3/K;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lax/c3/r;->X:Lax/c3/r;

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lax/c3/r;->Y:Lax/c3/r;

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method private J0()V
    .locals 2

    .line 1
    invoke-static {}, Lax/U2/e;->u()Lax/U2/e$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lax/c3/j;->d:Lax/U2/e$e;

    .line 6
    .line 7
    invoke-static {}, Lax/U2/e;->v()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lax/c3/j;->c:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lax/f3/K;->e:Lax/f3/K;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lax/c3/j;->d:Lax/U2/e$e;

    .line 19
    .line 20
    iget-object v0, v0, Lax/U2/e$e;->e:Lax/c3/r;

    .line 21
    .line 22
    invoke-direct {p0, v1, v0}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 23
    .line 24
    .line 25
    return-void
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
.end method

.method private K0()V
    .locals 2

    .line 1
    invoke-static {}, Lax/U2/e;->y()Lax/U2/e$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 6
    .line 7
    iget-object v0, v0, Lax/U2/e$e;->b:Ljava/io/File;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lax/c3/j;->e:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lax/f3/K;->f:Lax/f3/K;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 23
    .line 24
    iget-object v1, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 25
    .line 26
    iget-object v1, v1, Lax/U2/e$e;->e:Lax/c3/r;

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 29
    .line 30
    .line 31
    return-void
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
.end method

.method private M0()V
    .locals 4

    .line 1
    invoke-static {}, Lax/U2/e;->V()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Lax/U2/e;->i()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lax/c3/j;->g:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lax/U2/f;->z0:Lax/U2/f;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lax/c3/j;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lax/c3/j;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Lax/f3/B;->e0(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lax/c3/j;->h:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, p0, Lax/c3/j;->h:Z

    .line 44
    .line 45
    :goto_0
    sget-object v0, Lax/U2/f;->A0:Lax/U2/f;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v2, Lax/U2/f;->h1:Lax/U2/f;

    .line 52
    .line 53
    invoke-static {v2, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lax/f3/K;->j:Lax/f3/K;

    .line 58
    .line 59
    sget-object v3, Lax/c3/r;->X:Lax/c3/r;

    .line 60
    .line 61
    invoke-direct {p0, v2, v3}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lax/f3/K;->k:Lax/f3/K;

    .line 65
    .line 66
    sget-object v3, Lax/c3/r;->Y:Lax/c3/r;

    .line 67
    .line 68
    invoke-direct {p0, v2, v3}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0, v3}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v1, v3}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lax/c3/j;->n()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    sget-object v0, Lax/f3/K;->j:Lax/f3/K;

    .line 82
    .line 83
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 84
    .line 85
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    sget-object v0, Lax/f3/K;->j:Lax/f3/K;

    .line 90
    .line 91
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 92
    .line 93
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 94
    .line 95
    .line 96
    return-void
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
.end method

.method private N0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lax/c3/j;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lax/c3/j;->o:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lax/c3/j;->n:Z

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-boolean v0, p0, Lax/c3/j;->m:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lax/a3/Q;->w1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {}, Lax/U2/o;->i()Lax/U2/o;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lax/U2/o;->f(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 37
    .line 38
    const-string v1, "USB RAW DETECTED"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lax/f3/K;->k:Lax/f3/K;

    .line 44
    .line 45
    sget-object v1, Lax/c3/r;->X:Lax/c3/r;

    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    sget-object v0, Lax/f3/K;->k:Lax/f3/K;

    .line 52
    .line 53
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 54
    .line 55
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    sget-object v0, Lax/f3/K;->k:Lax/f3/K;

    .line 60
    .line 61
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 62
    .line 63
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    :goto_0
    sget-object v0, Lax/f3/K;->k:Lax/f3/K;

    .line 68
    .line 69
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 70
    .line 71
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 72
    .line 73
    .line 74
    return-void
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
.end method

.method private O0()V
    .locals 5

    .line 1
    invoke-static {}, Lax/a3/Q;->S1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "not reachable anymore"

    .line 8
    .line 9
    invoke-static {v0}, Lax/z3/b;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lax/c3/j;->Q0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lax/c3/j;->N0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Lax/c3/j;->o:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lax/c3/j;->o:Z

    .line 26
    .line 27
    sget-object v1, Lax/U2/f;->z0:Lax/U2/f;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lax/c3/r;->X:Lax/c3/r;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_2
    sget-object v0, Lax/c3/r;->Y:Lax/c3/r;

    .line 43
    .line 44
    invoke-static {}, Lax/a3/Q;->R1()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    invoke-direct {p0}, Lax/c3/j;->P0()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lax/c3/j;->b0()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    sget-object v3, Lax/c3/j$g;->X:Lax/c3/j$g;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {}, Lax/U2/o;->i()Lax/U2/o;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v4, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Lax/U2/o;->f(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    sget-object v3, Lax/c3/j$g;->q:Lax/c3/j$g;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    sget-object v2, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 79
    .line 80
    const-string v4, "NO USB DETECTED"

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-static {}, Lax/U2/o;->i()Lax/U2/o;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v4, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lax/U2/o;->f(Landroid/content/Context;)Landroid/hardware/usb/UsbDevice;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    sget-object v3, Lax/c3/j$g;->q:Lax/c3/j$g;

    .line 99
    .line 100
    :cond_6
    :goto_1
    sget-object v2, Lax/c3/j$g;->q:Lax/c3/j$g;

    .line 101
    .line 102
    if-ne v3, v2, :cond_8

    .line 103
    .line 104
    iget-boolean v2, p0, Lax/c3/j;->m:Z

    .line 105
    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    iget-boolean v2, p0, Lax/c3/j;->n:Z

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    sget-object v0, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 114
    .line 115
    const-string v2, "USB RAW DETECTED"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    :goto_2
    move-object v1, v0

    .line 122
    :goto_3
    sget-object v0, Lax/f3/K;->k:Lax/f3/K;

    .line 123
    .line 124
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 125
    .line 126
    .line 127
    return-void
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
.end method

.method private P0()V
    .locals 1

    .line 1
    invoke-static {}, Lax/a3/Q;->R1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lax/z3/b;->f()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lax/a3/Q;->S1()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lax/c3/j;->Q0()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lax/U2/e;->E()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lax/c3/j;->X0(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
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
.end method

.method private Q0()V
    .locals 1

    .line 1
    invoke-static {}, Lax/U2/e;->I()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lax/c3/j;->X0(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
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
.end method

.method private R0()V
    .locals 1

    .line 1
    invoke-static {}, Lax/a3/Q;->S1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lax/c3/j;->Q0()V

    .line 8
    .line 9
    .line 10
    :cond_0
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
.end method

.method private S0()V
    .locals 3

    .line 1
    new-instance v0, Lax/c3/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lax/c3/j$a;-><init>(Lax/c3/j;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "file"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v2, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
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
.end method

.method private T0()V
    .locals 3

    .line 1
    new-instance v0, Lax/c3/j$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lax/c3/j$c;-><init>(Lax/c3/j;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v2, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    .line 30
    :goto_0
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "USB RECEIVER ERROR"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 49
    .line 50
    .line 51
    return-void
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
.end method

.method private U0()V
    .locals 4

    .line 1
    invoke-static {}, Lax/a3/Q;->R1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x25

    .line 9
    .line 10
    invoke-static {v0}, Lax/a3/Q;->l(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "storage"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 22
    .line 23
    new-instance v1, Lax/c3/j$b;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lax/c3/j$b;-><init>(Lax/c3/j;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lax/a3/w;->q(Landroid/os/storage/StorageManager;Lax/a3/p;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v3, 0x1e

    .line 37
    .line 38
    if-lt v2, v3, :cond_1

    .line 39
    .line 40
    const/16 v2, 0x23

    .line 41
    .line 42
    invoke-static {v2}, Lax/a3/Q;->l(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Lax/a3/H;->a(Landroid/content/Context;Landroid/os/storage/StorageManager;Lax/a3/p;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
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
.end method

.method private W(Ljava/util/List;Lax/U2/e$e;)Lax/U2/e$e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lax/U2/e$e;",
            ">;",
            "Lax/U2/e$e;",
            ")",
            "Lax/U2/e$e;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Lax/U2/e$e;->i:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lax/U2/e$e;

    .line 20
    .line 21
    iget-object v3, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3}, Lax/z3/B;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-object v3, v2, Lax/U2/e$e;->i:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lax/z3/B;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v3, p2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 38
    .line 39
    iget-object v4, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 40
    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return-object p1
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
.end method

.method private X0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lax/U2/e$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lax/c3/j;->T()Lax/U2/e$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lax/U2/e$e;->e:Lax/c3/r;

    .line 6
    .line 7
    sget-object v2, Lax/c3/r;->X:Lax/c3/r;

    .line 8
    .line 9
    if-ne v1, v2, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lax/U2/e$e;

    .line 27
    .line 28
    iget-object v3, v3, Lax/U2/e$e;->a:Lax/U2/f;

    .line 29
    .line 30
    sget-object v4, Lax/U2/f;->u0:Lax/U2/f;

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    if-le v2, v1, :cond_4

    .line 39
    .line 40
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lax/U2/e$e;

    .line 55
    .line 56
    iget-object v3, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 57
    .line 58
    sget-object v4, Lax/U2/f;->u0:Lax/U2/f;

    .line 59
    .line 60
    if-ne v3, v4, :cond_2

    .line 61
    .line 62
    iget-object v3, v0, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    iget-object v3, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_2

    .line 77
    .line 78
    iget-object v3, v0, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    sget-object v3, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v5, "multi sd card check!!"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v5, v0, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, " != "

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v5, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lax/c3/j;->O()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iget-object v5, v2, Lax/U2/e$e;->b:Ljava/io/File;

    .line 127
    .line 128
    if-eqz v5, :cond_3

    .line 129
    .line 130
    if-eqz v4, :cond_3

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_2

    .line 141
    .line 142
    iget-object v4, v0, Lax/U2/e$e;->b:Ljava/io/File;

    .line 143
    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    iget-object v4, v2, Lax/U2/e$e;->b:Ljava/io/File;

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iget-object v5, v0, Lax/U2/e$e;->b:Ljava/io/File;

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_2

    .line 163
    .line 164
    iget-object v4, v2, Lax/U2/e$e;->b:Ljava/io/File;

    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iget-object v5, v0, Lax/U2/e$e;->b:Ljava/io/File;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_2

    .line 181
    .line 182
    const-string v4, "multi sd card detected!!"

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v3, Lax/U2/f;->C0:Lax/U2/f;

    .line 188
    .line 189
    iput-object v3, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_3
    invoke-static {}, Lax/a3/Q;->B1()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_2

    .line 198
    .line 199
    sget-object v3, Lax/U2/f;->i1:Lax/U2/f;

    .line 200
    .line 201
    iput-object v3, v2, Lax/U2/e$e;->a:Lax/U2/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :catch_0
    :cond_4
    iget-object v1, p0, Lax/c3/j;->w:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v1

    .line 208
    :try_start_1
    iget-object v2, p0, Lax/c3/j;->j:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_6

    .line 219
    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lax/U2/e$e;

    .line 225
    .line 226
    invoke-direct {p0, p1, v3}, Lax/c3/j;->W(Ljava/util/List;Lax/U2/e$e;)Lax/U2/e$e;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-nez v4, :cond_5

    .line 231
    .line 232
    sget-object v4, Lax/c3/r;->Y:Lax/c3/r;

    .line 233
    .line 234
    iput-object v4, v3, Lax/U2/e$e;->e:Lax/c3/r;

    .line 235
    .line 236
    const-string v4, "unknown"

    .line 237
    .line 238
    iput-object v4, v3, Lax/U2/e$e;->d:Ljava/lang/String;

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catchall_0
    move-exception p1

    .line 242
    goto/16 :goto_6

    .line 243
    .line 244
    :cond_5
    invoke-virtual {v3, v4}, Lax/U2/e$e;->a(Lax/U2/e$e;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_6
    iget-object v2, p0, Lax/c3/j;->j:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lax/c3/j;->j:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_12

    .line 267
    .line 268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Lax/U2/e$e;

    .line 273
    .line 274
    iget-object v3, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 275
    .line 276
    if-nez v3, :cond_8

    .line 277
    .line 278
    invoke-static {}, Lax/z3/b;->f()V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_8
    invoke-direct {p0, v2}, Lax/c3/j;->I(Lax/U2/e$e;)Lax/f3/K;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    sget-object v4, Lax/f3/K;->e:Lax/f3/K;

    .line 287
    .line 288
    if-eq v3, v4, :cond_7

    .line 289
    .line 290
    sget-object v4, Lax/f3/K;->f:Lax/f3/K;

    .line 291
    .line 292
    if-ne v3, v4, :cond_9

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_9
    iget-object v4, v2, Lax/U2/e$e;->e:Lax/c3/r;

    .line 296
    .line 297
    invoke-direct {p0, v3, v4}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 298
    .line 299
    .line 300
    iget-object v4, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 301
    .line 302
    sget-object v5, Lax/U2/f;->i1:Lax/U2/f;

    .line 303
    .line 304
    if-eq v4, v5, :cond_e

    .line 305
    .line 306
    sget-object v6, Lax/U2/f;->C0:Lax/U2/f;

    .line 307
    .line 308
    if-ne v4, v6, :cond_a

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_a
    sget-object v5, Lax/U2/f;->B0:Lax/U2/f;

    .line 312
    .line 313
    if-eq v4, v5, :cond_d

    .line 314
    .line 315
    sget-object v5, Lax/U2/f;->A0:Lax/U2/f;

    .line 316
    .line 317
    if-ne v4, v5, :cond_b

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_b
    sget-object v5, Lax/U2/f;->h1:Lax/U2/f;

    .line 321
    .line 322
    if-ne v4, v5, :cond_c

    .line 323
    .line 324
    iget-object v4, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_c
    invoke-direct {p0, v4}, Lax/c3/j;->g0(Lax/U2/f;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_7

    .line 335
    .line 336
    invoke-static {}, Lax/a3/Q;->L0()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_7

    .line 341
    .line 342
    iget-object v4, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 343
    .line 344
    if-eqz v4, :cond_7

    .line 345
    .line 346
    iget-object v4, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 347
    .line 348
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_d
    :goto_4
    iget-object v4, v2, Lax/U2/e$e;->b:Ljava/io/File;

    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v3, v4}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-direct {p0, v3}, Lax/c3/j;->m(Lax/f3/K;)V

    .line 362
    .line 363
    .line 364
    iget-object v5, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 365
    .line 366
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    iget-object v2, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 370
    .line 371
    sget-object v3, Lax/U2/f;->A0:Lax/U2/f;

    .line 372
    .line 373
    if-ne v2, v3, :cond_7

    .line 374
    .line 375
    iget-object v2, p0, Lax/c3/j;->l:Ljava/util/HashSet;

    .line 376
    .line 377
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_e
    :goto_5
    iget-object v4, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 382
    .line 383
    if-eqz v4, :cond_7

    .line 384
    .line 385
    iget-object v6, v0, Lax/U2/e$e;->e:Lax/c3/r;

    .line 386
    .line 387
    sget-object v7, Lax/c3/r;->X:Lax/c3/r;

    .line 388
    .line 389
    if-eq v6, v7, :cond_f

    .line 390
    .line 391
    invoke-static {}, Lax/a3/Q;->B1()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_7

    .line 396
    .line 397
    iget-object v4, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 398
    .line 399
    if-ne v4, v5, :cond_7

    .line 400
    .line 401
    iget-object v4, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 402
    .line 403
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    goto/16 :goto_3

    .line 407
    .line 408
    :cond_f
    iget-object v5, v0, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 409
    .line 410
    if-eqz v5, :cond_11

    .line 411
    .line 412
    if-eqz v4, :cond_11

    .line 413
    .line 414
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-nez v4, :cond_11

    .line 419
    .line 420
    sget-object v4, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 421
    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v6, "multi sd card added : "

    .line 428
    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v6, ","

    .line 436
    .line 437
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget-object v6, v2, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v4, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 453
    .line 454
    sget-object v5, Lax/U2/f;->C0:Lax/U2/f;

    .line 455
    .line 456
    if-ne v4, v5, :cond_10

    .line 457
    .line 458
    iget-object v4, v2, Lax/U2/e$e;->b:Ljava/io/File;

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v3, v4}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-direct {p0, v3}, Lax/c3/j;->m(Lax/f3/K;)V

    .line 468
    .line 469
    .line 470
    :cond_10
    iget-object v4, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    .line 477
    :cond_11
    sget-object v2, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 478
    .line 479
    const-string v4, "sd card document or volume is ignored"

    .line 480
    .line 481
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v2, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 485
    .line 486
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    goto/16 :goto_3

    .line 490
    .line 491
    :cond_12
    monitor-exit v1

    .line 492
    return-void

    .line 493
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    throw p1
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
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
.end method

.method static synthetic a(Lax/c3/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lax/c3/j;->o:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
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
.end method

.method static synthetic b(Lax/c3/j;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lax/c3/j;->l:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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
.end method

.method private b0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lax/c3/j;->w:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lax/c3/j;->j:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lax/U2/e$e;

    .line 21
    .line 22
    iget-object v3, v2, Lax/U2/e$e;->a:Lax/U2/f;

    .line 23
    .line 24
    invoke-static {v3}, Lax/U2/f;->w0(Lax/U2/f;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v2, v2, Lax/U2/e$e;->e:Lax/c3/r;

    .line 31
    .line 32
    sget-object v3, Lax/c3/r;->X:Lax/c3/r;

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    monitor-exit v0

    .line 38
    return v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    const/4 v0, 0x0

    .line 43
    return v0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1
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
.end method

.method static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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
.end method

.method static synthetic d(Lax/c3/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lax/c3/j;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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
.end method

.method private d0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lax/c3/j;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lax/c3/j;->b:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lax/c3/j;->S0()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lax/c3/j;->T0()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lax/c3/j;->U0()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lax/c3/j;->L0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
.end method

.method static synthetic e(Lax/c3/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lax/c3/j;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
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
.end method

.method public static e0(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lax/c3/j;->z:Lax/c3/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lax/c3/j;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lax/c3/j;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lax/c3/j;->z:Lax/c3/j;

    .line 11
    .line 12
    invoke-direct {v0}, Lax/c3/j;->d0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic f(Lax/c3/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lax/c3/j;->h:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
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
.end method

.method private f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object v1, Lax/f3/K;->e:Lax/f3/K;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v1, Lax/f3/K;->f:Lax/f3/K;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget-object v1, Lax/f3/K;->g:Lax/f3/K;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 31
    .line 32
    sget-object v1, Lax/U2/f;->z0:Lax/U2/f;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v1, v2}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 43
    .line 44
    sget-object v1, Lax/U2/f;->A0:Lax/U2/f;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
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
.end method

.method static synthetic g(Lax/c3/j;Lax/f3/K;Lax/c3/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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
.end method

.method private g0(Lax/U2/f;)Z
    .locals 1

    .line 1
    sget-object v0, Lax/U2/f;->j1:Lax/U2/f;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lax/U2/f;->k1:Lax/U2/f;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lax/U2/f;->l1:Lax/U2/f;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic h(Lax/c3/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lax/c3/j;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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
.end method

.method private h0(Lax/U2/f;)Z
    .locals 1

    .line 1
    sget-object v0, Lax/U2/f;->B0:Lax/U2/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
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
.end method

.method static synthetic i(Lax/c3/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lax/c3/j;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
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
.end method

.method static synthetic j(Lax/c3/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lax/c3/j;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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
.end method

.method static synthetic k(Lax/c3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lax/c3/j;->n()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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
.end method

.method static synthetic l(Lax/c3/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lax/c3/j;->m:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
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
.end method

.method private m(Lax/f3/K;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lax/c3/j;->f0()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
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
.end method

.method private n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    check-cast v5, Lax/f3/K;

    .line 33
    .line 34
    invoke-virtual {v5}, Lax/f3/K;->k()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v2, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v3, "local.intent.action.LOCAL_STORAGE_STATUS_CHANGED"

    .line 52
    .line 53
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "CHANGED_STORAGES"

    .line 57
    .line 58
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lax/z3/g;->a()Lax/z3/g;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Lax/z3/g;->e(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    sget-object v2, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "Local Storage Status Changed : Send Broadcast "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " locations"

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw v1
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
.end method

.method private p(Lax/f3/K;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lax/c3/j;->v:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lax/c3/j;->u(Lax/f3/K;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lax/f3/K;->e()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    iput-wide v4, v1, Lax/c3/j$e;->c:J

    .line 28
    .line 29
    iput-wide v4, v1, Lax/c3/j$e;->d:J

    .line 30
    .line 31
    iput-boolean v3, v1, Lax/c3/j$e;->a:Z

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Lax/W2/h;->a0(Lax/f3/K;)Lax/f3/K;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lax/f3/x;->e(Lax/f3/K;)Lcom/alphainventor/filemanager/file/o;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/o;->D()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1, v2}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Lax/f3/b;->o()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-wide v6, v4

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/alphainventor/filemanager/file/n;

    .line 79
    .line 80
    invoke-interface {v2}, Lax/f3/b;->p()J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    add-long/2addr v4, v8

    .line 85
    const-wide/16 v8, 0x1

    .line 86
    .line 87
    add-long/2addr v6, v8

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move-wide v6, v4

    .line 90
    :cond_3
    iput-wide v4, v1, Lax/c3/j$e;->c:J

    .line 91
    .line 92
    iput-wide v6, v1, Lax/c3/j$e;->d:J

    .line 93
    .line 94
    iput-boolean v3, v1, Lax/c3/j$e;->a:Z
    :try_end_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    :catch_0
    :cond_4
    :try_start_2
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p1
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
.end method

.method private r(Lax/f3/K;Lax/c3/r;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lax/c3/j;->r:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lax/c3/r;

    .line 8
    .line 9
    sget-object v1, Lax/c3/r;->X:Lax/c3/r;

    .line 10
    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lax/c3/j$d;->a:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    aget v1, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    if-eq v1, v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    if-eq v1, v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-boolean v2, p0, Lax/c3/j;->n:Z

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-eq v0, p2, :cond_2

    .line 38
    .line 39
    sget-object v1, Lax/c3/j;->y:Ljava/util/logging/Logger;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Local Storage Status Changed : "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ":"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " -> "

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 78
    .line 79
    monitor-enter p2

    .line 80
    :try_start_0
    iget-object v0, p0, Lax/c3/j;->q:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    monitor-exit p2

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1

    .line 90
    :cond_2
    return-void
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
.end method

.method private s(Lax/U2/f;)V
    .locals 1

    .line 1
    sget-object v0, Lax/c3/j$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lax/z3/b;->f()V

    .line 13
    .line 14
    .line 15
    :pswitch_0
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private t0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 9
    .line 10
    iget-boolean v0, v0, Lax/U2/e$e;->f:Z

    .line 11
    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method private v(Landroid/net/Uri;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lax/f3/l;->g:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    invoke-static {v7}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-gtz v1, :cond_1

    .line 37
    .line 38
    invoke-static {v7}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {p1}, Lax/f3/L;->Y(Landroid/net/Uri;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lax/c3/j;->W0(Landroid/net/Uri;)Lax/f3/K;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v2}, Lax/f3/K;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v7}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object p1, v0

    .line 67
    invoke-static {v7}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :catch_0
    invoke-static {v7}, Lax/f3/F;->a(Ljava/lang/AutoCloseable;)V

    .line 72
    .line 73
    .line 74
    return v0
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
.end method

.method private y0()Z
    .locals 2

    .line 1
    sget-object v0, Lax/U2/f;->z0:Lax/U2/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lax/c3/j;->M0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lax/c3/j;->h:Z

    .line 18
    .line 19
    return v0
    .line 20
    .line 21
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lax/f3/K;

    .line 23
    .line 24
    invoke-virtual {v2}, Lax/f3/K;->d()Lax/U2/f;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v4, Lax/U2/f;->i1:Lax/U2/f;

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lax/f3/K;->d()Lax/U2/f;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lax/U2/f;->C0:Lax/U2/f;

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, v2}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Lax/c3/r;->X:Lax/c3/r;

    .line 45
    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-object v1
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
.end method

.method public B()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lax/U2/f;->z0:Lax/U2/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v2, Lax/U2/f;->g1:Lax/U2/f;

    .line 9
    .line 10
    invoke-static {v2, v1}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v0}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lax/c3/r;->X:Lax/c3/r;

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lax/f3/K;

    .line 53
    .line 54
    invoke-virtual {v3}, Lax/f3/K;->d()Lax/U2/f;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Lax/U2/f;->A0:Lax/U2/f;

    .line 59
    .line 60
    if-eq v4, v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Lax/f3/K;->d()Lax/U2/f;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sget-object v5, Lax/U2/f;->h1:Lax/U2/f;

    .line 67
    .line 68
    if-ne v4, v5, :cond_1

    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0, v3}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Lax/c3/r;->X:Lax/c3/r;

    .line 75
    .line 76
    if-ne v4, v5, :cond_1

    .line 77
    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    if-nez v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v3, Lax/c3/r;->X:Lax/c3/r;

    .line 96
    .line 97
    if-ne v0, v3, :cond_5

    .line 98
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_5
    return-object v2
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
.end method

.method public C0(Lax/f3/K;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
.end method

.method public D(Lax/f3/K;)Lax/c3/r;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lax/c3/j;->s(Lax/U2/f;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lax/c3/j;->r:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lax/c3/r;

    .line 15
    .line 16
    return-object p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lax/U2/f;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
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
.end method

.method public F0(Lax/f3/K;)Z
    .locals 1

    .line 1
    invoke-static {}, Lax/a3/Q;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lax/a3/Q;->m0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method G(Lax/f3/K;)Lax/c3/j$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lax/c3/j;->t:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lax/c3/j;->t:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Lax/c3/j$e;

    .line 12
    .line 13
    invoke-direct {v1}, Lax/c3/j$e;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lax/c3/j;->t:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lax/c3/j$e;

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
.end method

.method public G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lax/y3/k;->y(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lax/c3/j;->E()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lax/c3/r;->X:Lax/c3/r;

    .line 20
    .line 21
    sget-object v2, Lax/f3/K;->g:Lax/f3/K;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lax/f3/K;->i(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 31
    .line 32
    :goto_0
    sget-object v0, Lax/f3/K;->g:Lax/f3/K;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 35
    .line 36
    .line 37
    return-void
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
.end method

.method public J(Ljava/lang/String;Lax/f3/K;)Lax/f3/K;
    .locals 4

    .line 1
    invoke-static {p1}, Lax/f3/d0;->B(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lax/z3/b;->c(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lax/c3/j;->u:Ljava/util/ArrayList;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0}, Lax/c3/j;->C()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lax/f3/K;

    .line 30
    .line 31
    invoke-virtual {v2}, Lax/f3/K;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lax/f3/K;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3, p1}, Lax/f3/d0;->H(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-object v2

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Lax/f3/K;->d()Lax/U2/f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lax/U2/f;->h0(Lax/U2/f;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_2
    sget-object p1, Lax/f3/K;->h:Lax/f3/K;

    .line 66
    .line 67
    return-object p1

    .line 68
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p1
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
.end method

.method public K(Lax/f3/K;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/c3/j$f;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object p1, p1, Lax/c3/j$f;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-object p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public L()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lax/f3/K;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
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
.end method

.method public declared-synchronized L0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lax/a3/Q;->S1()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lax/c3/j;->J0()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lax/c3/j;->Q0()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lax/c3/j;->N0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-direct {p0}, Lax/c3/j;->J0()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lax/c3/j;->M0()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lax/c3/j;->O0()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Lax/c3/j;->G0()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lax/c3/j;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw v0
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
.end method

.method public M(Lax/f3/K;)Lax/c3/j$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/c3/j$f;

    .line 8
    .line 9
    return-object p1
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
.end method

.method public N(Lax/f3/K;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/c3/j$f;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object p1, p1, Lax/c3/j$f;->a:Landroid/net/Uri;

    .line 14
    .line 15
    return-object p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->J0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->c:Ljava/lang/String;

    .line 9
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
.end method

.method public P()F
    .locals 1

    .line 1
    sget-object v0, Lax/f3/K;->e:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->X(Lax/f3/K;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method

.method public Q(Lax/f3/K;)J
    .locals 4

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lax/c3/j;->u0()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lax/f3/K;->e:Lax/f3/K;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-wide v0, p1, Lax/c3/j$e;->d:J

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    sget-object p1, Lax/f3/K;->e:Lax/f3/K;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-wide v0, p1, Lax/c3/j$e;->d:J

    .line 29
    .line 30
    sget-object p1, Lax/f3/K;->f:Lax/f3/K;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-wide v2, p1, Lax/c3/j$e;->d:J

    .line 37
    .line 38
    add-long/2addr v0, v2

    .line 39
    return-wide v0

    .line 40
    :cond_1
    sget-object v0, Lax/f3/K;->e:Lax/f3/K;

    .line 41
    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-wide v0, p1, Lax/c3/j$e;->d:J

    .line 49
    .line 50
    return-wide v0

    .line 51
    :cond_2
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-wide v0, p1, Lax/c3/j$e;->d:J

    .line 60
    .line 61
    return-wide v0

    .line 62
    :cond_3
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "INVALID RECYCLE BIN LOCATION 3"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 81
    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    return-wide v0
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
.end method

.method public R()J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lax/c3/j;->S(Lax/f3/K;)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lax/c3/j;->s:J

    .line 7
    .line 8
    const-wide/16 v4, -0x1

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-eqz v6, :cond_1

    .line 13
    .line 14
    cmp-long v6, v0, v4

    .line 15
    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-long v2, v0, v2

    .line 20
    .line 21
    iput-wide v0, p0, Lax/c3/j;->s:J

    .line 22
    .line 23
    return-wide v2

    .line 24
    :cond_1
    :goto_0
    iput-wide v0, p0, Lax/c3/j;->s:J

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    return-wide v0
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
.end method

.method public S(Lax/f3/K;)J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    sget-object p1, Lax/f3/K;->e:Lax/f3/K;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v2, v2, Lax/c3/j$e;->a:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lax/c3/j;->u0()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_1
    sget-object v2, Lax/f3/K;->f:Lax/f3/K;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-boolean v3, v3, Lax/c3/j$e;->a:Z

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    return-wide v0

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-wide v2, p1, Lax/c3/j$e;->c:J

    .line 55
    .line 56
    add-long/2addr v0, v2

    .line 57
    return-wide v0

    .line 58
    :cond_3
    sget-object v2, Lax/f3/K;->e:Lax/f3/K;

    .line 59
    .line 60
    if-ne p1, v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-boolean p1, p1, Lax/c3/j$e;->a:Z

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    return-wide v0

    .line 71
    :cond_4
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 76
    .line 77
    return-wide v0

    .line 78
    :cond_5
    sget-object v2, Lax/f3/K;->f:Lax/f3/K;

    .line 79
    .line 80
    if-ne p1, v2, :cond_7

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-boolean p1, p1, Lax/c3/j$e;->a:Z

    .line 87
    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    return-wide v0

    .line 91
    :cond_6
    invoke-virtual {p0, v2}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 96
    .line 97
    return-wide v0

    .line 98
    :cond_7
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "INVALID RECYCLE BIN LOCATION 2"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v2, p1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 117
    .line 118
    .line 119
    return-wide v0
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
.end method

.method public T()Lax/U2/e$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 9
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
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->e:Ljava/lang/String;

    .line 9
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
.end method

.method public V()F
    .locals 1

    .line 1
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->X(Lax/f3/K;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method

.method public V0(Lax/f3/K;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lax/c3/j$f;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p2, p1, Lax/c3/j$f;->b:Landroid/net/Uri;

    .line 13
    .line 14
    iput-object p3, p1, Lax/c3/j$f;->c:Ljava/lang/String;

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
.end method

.method public W0(Landroid/net/Uri;)Lax/f3/K;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    sget-object v1, Lax/U2/f;->m1:Lax/U2/f;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lax/f3/K;->a(Lax/U2/f;I)Lax/f3/K;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lax/c3/r;->X:Lax/c3/r;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lax/c3/j$f;

    .line 30
    .line 31
    invoke-direct {v1}, Lax/c3/j$f;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, v1, Lax/c3/j$f;->a:Landroid/net/Uri;

    .line 35
    .line 36
    iget-object p1, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v0
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
.end method

.method public X(Lax/f3/K;)F
    .locals 7

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lax/f3/x;->e(Lax/f3/K;)Lcom/alphainventor/filemanager/file/o;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Lcom/alphainventor/filemanager/file/o;->h(Lcom/alphainventor/filemanager/file/c$a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/o;->E()Lax/f3/k0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-wide v1, p1, Lax/f3/k0;->b:J

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long v5, v1, v3

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    iget-wide v3, p1, Lax/f3/k0;->a:J
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    long-to-double v3, v3

    .line 34
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 35
    .line 36
    mul-double v3, v3, v5

    .line 37
    .line 38
    long-to-double v0, v1

    .line 39
    div-double/2addr v3, v0

    .line 40
    double-to-float p1, v3

    .line 41
    return p1

    .line 42
    :catch_0
    :cond_1
    return v0
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
.end method

.method public Y(Lax/f3/K;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lax/U2/f;->u0:Lax/U2/f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lax/U2/e$e;->h:Ljava/lang/String;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lax/U2/e$e;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Lax/U2/e$e;->h:Ljava/lang/String;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return-object p1
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
.end method

.method public Z()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return-object v0
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
.end method

.method public a0(Lax/f3/K;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lax/U2/f;->u0:Lax/U2/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget-object p1, p1, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lax/U2/f;->t0:Lax/U2/f;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lax/c3/j;->d:Lax/U2/e$e;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p1, p1, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lax/U2/f;->x0:Lax/U2/f;

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_2
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lax/U2/e$e;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p1, Lax/U2/e$e;->g:Ljava/lang/String;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    return-object v2
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method public c0()Z
    .locals 2

    .line 1
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    sget-object v0, Lax/c3/r;->q:Lax/c3/r;

    .line 17
    .line 18
    if-eq v1, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return v0
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
.end method

.method public i0()Z
    .locals 1

    .line 1
    sget-object v0, Lax/f3/K;->g:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->m0(Lax/f3/K;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method

.method public j0()Z
    .locals 1

    .line 1
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lax/c3/j;->E()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
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
.end method

.method public k0(Lax/f3/K;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lax/U2/f;->u0:Lax/U2/f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lax/c3/j;->t0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    sget-object v1, Lax/U2/f;->t0:Lax/U2/f;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    sget-object v1, Lax/U2/f;->C0:Lax/U2/f;

    .line 21
    .line 22
    if-eq v0, v1, :cond_5

    .line 23
    .line 24
    sget-object v1, Lax/U2/f;->B0:Lax/U2/f;

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget-object v1, Lax/U2/f;->A0:Lax/U2/f;

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lax/c3/j;->A0(Lax/f3/K;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_3
    sget-object p1, Lax/U2/f;->z0:Lax/U2/f;

    .line 39
    .line 40
    if-ne v0, p1, :cond_4

    .line 41
    .line 42
    invoke-direct {p0}, Lax/c3/j;->y0()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_4
    return v2

    .line 48
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lax/c3/j;->D0(Lax/f3/K;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method public l0(Lax/f3/K;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lax/U2/f;->A0:Lax/U2/f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lax/c3/j;->B0(Lax/f3/K;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public m0(Lax/f3/K;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lax/c3/j;->H0(Lax/f3/K;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v1, Lax/c3/r;->Y:Lax/c3/r;

    .line 17
    .line 18
    invoke-direct {p0, p1, v1}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lax/c3/r;->X:Lax/c3/r;

    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
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
.end method

.method public n0()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 3
    .line 4
    const-string v2, "usb"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/hardware/usb/UsbManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-ge v4, v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x6

    .line 57
    if-ne v6, v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x1

    .line 64
    if-ne v6, v7, :cond_2

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 67
    .line 68
    .line 69
    move-result v5
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    if-ne v5, v7, :cond_2

    .line 71
    .line 72
    return v7

    .line 73
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    :cond_3
    return v0
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
.end method

.method public o(Lax/f3/K;)J
    .locals 5

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    sget-object p1, Lax/f3/K;->e:Lax/f3/K;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lax/c3/j;->p(Lax/f3/K;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lax/c3/j;->u0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_0
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lax/c3/j;->p(Lax/f3/K;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-wide v1, p1, Lax/c3/j$e;->c:J

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-wide v3, p1, Lax/c3/j$e;->c:J

    .line 41
    .line 42
    add-long/2addr v1, v3

    .line 43
    return-wide v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lax/U2/f;->t0:Lax/U2/f;

    .line 49
    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    sget-object p1, Lax/f3/K;->e:Lax/f3/K;

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lax/c3/j;->p(Lax/f3/K;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 62
    .line 63
    return-wide v0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lax/f3/K;->d()Lax/U2/f;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lax/U2/f;->u0:Lax/U2/f;

    .line 69
    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    sget-object p1, Lax/f3/K;->f:Lax/f3/K;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lax/c3/j;->p(Lax/f3/K;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-wide v0, p1, Lax/c3/j$e;->c:J

    .line 82
    .line 83
    return-wide v0

    .line 84
    :cond_3
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "INVALID RECYCLE BIN LOCATION 1"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 103
    .line 104
    .line 105
    const-wide/16 v0, -0x1

    .line 106
    .line 107
    return-wide v0
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
.end method

.method public o0(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lax/c3/j;->P()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lax/U2/e;->m(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    cmpl-float p1, v0, p1

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public p0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->d:Lax/U2/e$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->J0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->d:Lax/U2/e$e;

    .line 9
    .line 10
    iget-boolean v0, v0, Lax/U2/e$e;->c:Z

    .line 11
    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lax/y3/k;->l(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lax/c3/j;->r0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
    .line 19
    .line 20
    .line 21
.end method

.method public q0()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lax/c3/j;->s:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lax/z3/r;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lax/c3/j;->p:Ljava/lang/Boolean;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lax/c3/j;->p:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public s0()Z
    .locals 1

    .line 1
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lax/c3/j;->p0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lax/c3/j;->c0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lax/c3/j;->x0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0
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
.end method

.method public t()V
    .locals 5

    .line 1
    invoke-static {}, Lax/a3/Q;->k1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lax/c3/j;->n0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_6

    .line 22
    .line 23
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lax/f3/K;

    .line 44
    .line 45
    sget-object v2, Lax/c3/r;->Y:Lax/c3/r;

    .line 46
    .line 47
    invoke-direct {p0, v1, v2}, Lax/c3/j;->r(Lax/f3/K;Lax/c3/r;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lax/c3/j;->x:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :try_start_0
    iget-object v0, p0, Lax/c3/j;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x0

    .line 72
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/content/UriPermission;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/content/UriPermission;->isReadPermission()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/UriPermission;->isWritePermission()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    const-string v3, "com.android.mtp.documents"

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-direct {p0, v2}, Lax/c3/j;->v(Landroid/net/Uri;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    if-eqz v1, :cond_6

    .line 123
    .line 124
    invoke-direct {p0}, Lax/c3/j;->n()V

    .line 125
    .line 126
    .line 127
    :catch_0
    :cond_6
    :goto_2
    return-void
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
.end method

.method u(Lax/f3/K;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lax/W2/h;->a0(Lax/f3/K;)Lax/f3/K;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lax/f3/x;->e(Lax/f3/K;)Lcom/alphainventor/filemanager/file/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lax/f3/K;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/alphainventor/filemanager/file/J;->c2(Lax/f3/K;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lax/f3/b;->q()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    :goto_0
    iget-wide v5, v0, Lax/c3/j$e;->b:J

    .line 36
    .line 37
    cmp-long p1, v3, v5

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iput-wide v3, v0, Lax/c3/j$e;->b:J
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return p1

    .line 46
    :catch_0
    return v2
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
.end method

.method public u0()Z
    .locals 1

    .line 1
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->m0(Lax/f3/K;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method

.method public v0(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lax/c3/j;->V()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lax/U2/e;->m(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    cmpl-float p1, v0, p1

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public w()V
    .locals 12

    .line 1
    iget-object v0, p0, Lax/c3/j;->v:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v1}, Lax/W2/h;->a0(Lax/f3/K;)Lax/f3/K;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lax/f3/x;->e(Lax/f3/K;)Lcom/alphainventor/filemanager/file/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/alphainventor/filemanager/file/o;->D()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Lax/f3/b;->o()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lcom/alphainventor/filemanager/file/n;

    .line 55
    .line 56
    instance-of v7, v6, Lcom/alphainventor/filemanager/file/K;

    .line 57
    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    check-cast v6, Lcom/alphainventor/filemanager/file/K;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/alphainventor/filemanager/file/K;->p()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    add-long/2addr v4, v7

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    invoke-virtual {v6}, Lcom/alphainventor/filemanager/file/K;->q()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    sub-long/2addr v7, v9

    .line 76
    const-wide v9, 0x134fd9000L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v11, v7, v9

    .line 82
    .line 83
    if-lez v11, :cond_0

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/alphainventor/filemanager/file/K;->p()J

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-static {}, Lax/z3/b;->f()V
    :try_end_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const-wide v6, 0x80000000L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v3, v4, v6

    .line 106
    .line 107
    if-gez v3, :cond_3

    .line 108
    .line 109
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    return-void

    .line 111
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const/4 v4, 0x0

    .line 116
    :goto_1
    if-ge v4, v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    check-cast v5, Lcom/alphainventor/filemanager/file/K;

    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/alphainventor/filemanager/file/K;->D1()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v1, v6}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v5}, Lcom/alphainventor/filemanager/file/K;->B1()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v1, v5}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v1, v6}, Lcom/alphainventor/filemanager/file/o;->m(Lcom/alphainventor/filemanager/file/n;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Lcom/alphainventor/filemanager/file/o;->q1(Lcom/alphainventor/filemanager/file/n;)V
    :try_end_3
    .catch Lax/e3/j; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_4
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    throw v1
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
.end method

.method public w0()Z
    .locals 2

    .line 1
    invoke-static {}, Lax/a3/Q;->z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lax/c3/j;->c0()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-static {}, Lax/U2/e;->O()Z

    .line 21
    .line 22
    .line 23
    move-result v0

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
.end method

.method public x()V
    .locals 3

    .line 1
    sget-object v0, Lax/f3/K;->e:Lax/f3/K;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, v0, Lax/c3/j$e;->b:J

    .line 10
    .line 11
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lax/c3/j;->u0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lax/c3/j;->G(Lax/f3/K;)Lax/c3/j$e;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-wide v1, v0, Lax/c3/j$e;->b:J

    .line 28
    .line 29
    :cond_0
    return-void
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
.end method

.method public x0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lax/c3/j;->K0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lax/c3/j;->f:Lax/U2/e$e;

    .line 9
    .line 10
    iget-boolean v0, v0, Lax/U2/e$e;->c:Z

    .line 11
    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public y()V
    .locals 1

    .line 1
    invoke-static {}, Lax/U2/o;->i()Lax/U2/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lax/U2/o;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lax/c3/j;->m:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lax/c3/j;->o:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lax/c3/j;->L0()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
.end method

.method public z()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lax/f3/K;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/c3/j;->k:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lax/f3/K;

    .line 23
    .line 24
    invoke-static {}, Lax/a3/Q;->L0()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lax/f3/K;->d()Lax/U2/f;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {p0, v3}, Lax/c3/j;->g0(Lax/U2/f;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lax/f3/K;->d()Lax/U2/f;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {p0, v3}, Lax/c3/j;->h0(Lax/U2/f;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, v2}, Lax/c3/j;->D(Lax/f3/K;)Lax/c3/r;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v4, Lax/c3/r;->X:Lax/c3/r;

    .line 55
    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p0}, Lax/c3/j;->L()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lax/f3/K;

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    return-object v1
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
.end method

.method z0()Z
    .locals 1

    .line 1
    invoke-static {}, Lax/a3/J;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
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
.end method
