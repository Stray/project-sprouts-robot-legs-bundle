package <%= package_name %> 
{

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Service;
	
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
			<%= instance_name %>.eventDispatcher = new EventDispatcher();
			
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
		
		public function testIsActor():void
		{
			assertTrue("<%= instance_name %> is robotlegs Actor", <%= instance_name %> is Actor);
		}

		public function testFailure():void 
		{
			assertTrue("Failing test", false);
		}
		
	}
}