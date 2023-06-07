@istest
public class IfAndForLoopTest {
    @istest
    private static void phoneTest() {
        IfAndForLoop ifl = new IfAndForLoop();
        string msg = ifl.phone('2123457698');
        assert.isNotNull(msg);
        string msg2 = ifl.phone('2163457698');
        assert.isNotNull(msg2);
        string msg3 = ifl.phone('3123457698');
        assert.isNotNull(msg3);
        string msg4 = ifl.phone('212345769856');
        assert.isNotNull(msg4);
    }
    @istest
    private static void sumTest() {
        IfAndForLoop ifl = new IfAndForLoop();
        ifl.sum(5);
    }
    @istest
    private static void helloTest() {
        IfAndForLoop ifl = new IfAndForLoop();
        string msg = ifl.hello('ali');
        assert.isNotNull(msg);
        assert.areEqual(' hello 1 hello 2 hello 3', msg);
    }
}