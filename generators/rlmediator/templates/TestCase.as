package <%= package_name %> 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;
	
	import flash.events.EventDispatcher;

	public class <%= test_case_name  %> extends TestCase 
	{
		private var <%= instance_name %>:<%= class_name %>;

		public function <%= test_case_name %>(methodName:String=null) 
		{
			super(methodName)
		}

		override protected function setUp():void 
		{
			super.setUp();
			<%= instance_name %> = new <%= class_name %>();
			<%= instance_name %>.view = new View();
		    <%= instance_name %>.eventDispatcher = new EventDispatcher();
		    <%= instance_name %>.onRegister();
		}

		override protected function tearDown():void 
		{
			super.tearDown();
			<%= instance_name %> = null;
		}

		public function testInstantiated():void 
		{
			assertTrue("<%= instance_name %> is <%= class_name %>", <%= instance_name %> is <%= class_name %>);
		}
        
		public function testIsMediator():void
		{
			assertTrue("<%= instance_name %> is robotlegs Mediator", <%= instance_name %> is Mediator);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}