package <%= package_name %> 
{
	
	import org.robotlegs.mvcs.Mediator;
	
	public class <%= class_name %> extends Mediator 
	{
		
		// declare the view to be injected
		[Inject]
		public var view:MyViewClass;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * Avoid doing work in the constructor!
		 * onRegister() is the place to do things. 
		 * 
		 */
		
		public function <%= class_name %>() 
		{			
			// Try not to put stuff in the constructor of the mediator
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden API
		//
		//--------------------------------------------------------------------------
		/**
		 * Initialize the view and register for events. 
		 * 
		 */
		override public function onRegister():void
		{			
			//eventMap.mapListener(eventDispatcher, EventType.EVENT_NAME, eventHandlerFunction, eventClass);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event Handlers
		//
		//--------------------------------------------------------------------------
		
	}
}
